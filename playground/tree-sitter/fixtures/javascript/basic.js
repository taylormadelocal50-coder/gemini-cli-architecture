export function greet(name) {
  const message = `Hello, ${name}`;
  return message;
}

const announce = (message) => console.log(message);
announce(greet('Tree-sitter'));
