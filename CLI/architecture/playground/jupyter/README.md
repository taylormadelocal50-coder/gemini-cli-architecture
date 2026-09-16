# Jupyter Playground

A local Jupyter environment for architecture experiments and future ATLED, MESH, and IAEI notebooks.

## Setup

```bash
cd CLI/architecture/playground/jupyter
python3 -m venv .venv
source .venv/bin/activate
python -m pip install --upgrade pip
python -m pip install jupyterlab
python -m pip install -r requirements.txt
jupyter lab notebooks
```

The `.venv/` environment and notebook checkpoints are local-only and are not committed.
