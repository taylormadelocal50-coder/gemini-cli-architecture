export interface User {
  name: string;
}

export const greet = (user: User): string => `Hello, ${user.name}`;
