; Capture named JavaScript functions for playground experiments.
(function_declaration
  name: (identifier) @function.name) @function.definition

; Capture arrow-function variable declarations.
(variable_declarator
  name: (identifier) @function.name
  value: (arrow_function)) @function.definition
