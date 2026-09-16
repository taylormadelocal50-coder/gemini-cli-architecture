; Named function declarations.
(function_declaration
  name: (identifier) @function.name) @function.definition

; Arrow functions assigned to variables.
(variable_declarator
  name: (identifier) @function.name
  value: (arrow_function)) @function.definition
