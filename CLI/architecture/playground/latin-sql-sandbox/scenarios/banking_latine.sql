-- SQL syntax remains standards-compliant; domain identifiers and labels use Latin.
PRAGMA foreign_keys = ON;

CREATE TABLE entitates (
    entitas_id INTEGER PRIMARY KEY,
    nomen TEXT NOT NULL,
    genus TEXT NOT NULL CHECK (genus IN ('individuum', 'corporatio'))
);

CREATE TABLE rationes (
    ratio_id INTEGER PRIMARY KEY,
    entitas_id INTEGER NOT NULL REFERENCES entitates(entitas_id),
    moneta TEXT NOT NULL DEFAULT 'USD',
    aequilibrium NUMERIC NOT NULL CHECK (aequilibrium >= 0)
);

CREATE TABLE commutationes (
    commutatio_id INTEGER PRIMARY KEY,
    ratio_origo_id INTEGER NOT NULL REFERENCES rationes(ratio_id),
    ratio_destinatio_id INTEGER NOT NULL REFERENCES rationes(ratio_id),
    quantitas NUMERIC NOT NULL CHECK (quantitas > 0),
    status TEXT NOT NULL CHECK (status IN ('proposita', 'commissa', 'reformulata', 'separata')),
    creata_utc TEXT NOT NULL
);

CREATE TABLE aestimationes_atled (
    aestimatio_id INTEGER PRIMARY KEY,
    commutatio_id INTEGER NOT NULL REFERENCES commutationes(commutatio_id),
    altruismus REAL NOT NULL CHECK (altruismus BETWEEN -1.0 AND 1.0),
    tempus REAL NOT NULL CHECK (tempus >= 0),
    longaevitas REAL NOT NULL CHECK (longaevitas >= 0),
    energia REAL NOT NULL,
    decisio TEXT NOT NULL CHECK (decisio IN ('committere', 'reformulare', 'mutare', 'separare', 'plura_indicia')),
    fiducia REAL NOT NULL CHECK (fiducia BETWEEN 0.0 AND 1.0),
    effectus_persistens REAL,
    tempus_impensum REAL CHECK (tempus_impensum >= 0)
);

INSERT INTO entitates (entitas_id, nomen, genus) VALUES
    (1, 'Civis Alpha', 'individuum'),
    (2, 'Argentaria Beta', 'corporatio');

INSERT INTO rationes (ratio_id, entitas_id, moneta, aequilibrium) VALUES
    (101, 1, 'USD', 1200.00),
    (202, 2, 'USD', 500000.00);

INSERT INTO commutationes (
    commutatio_id, ratio_origo_id, ratio_destinatio_id, quantitas, status, creata_utc
) VALUES (
    1, 101, 202, 125.00, 'proposita', '2026-09-16T08:00:00Z'
);

INSERT INTO aestimationes_atled (
    aestimatio_id, commutatio_id, altruismus, tempus, longaevitas,
    energia, decisio, fiducia, effectus_persistens, tempus_impensum
) VALUES (
    1, 1, 0.40, 1.00, 0.75, -0.20, 'reformulare', 0.68, 0.60, 0.50
);

SELECT
    c.commutatio_id,
    o.nomen AS entitas_originis,
    d.nomen AS entitas_destinationis,
    c.quantitas,
    a.altruismus,
    a.tempus,
    a.longaevitas,
    a.energia,
    a.decisio,
    a.fiducia,
    a.effectus_persistens / NULLIF(a.tempus_impensum, 0) AS densitas_effectus
FROM commutationes AS c
JOIN rationes AS ro ON ro.ratio_id = c.ratio_origo_id
JOIN entitates AS o ON o.entitas_id = ro.entitas_id
JOIN rationes AS rd ON rd.ratio_id = c.ratio_destinatio_id
JOIN entitates AS d ON d.entitas_id = rd.entitas_id
JOIN aestimationes_atled AS a ON a.commutatio_id = c.commutatio_id;
