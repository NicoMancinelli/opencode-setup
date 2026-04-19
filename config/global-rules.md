# Global Engineering Standards

These rules apply to all projects I work on with OpenCode.

## 🤖 General Behavior

- **Be Concise**: Prioritize direct solutions over lengthy explanations.
- **Atomic Commits**: If asked to commit, group logical changes into small, descriptive commits.
- **Dry Run First**: Before making massive deletions or destructive changes, explain your plan and wait for a "Go".

## 💻 Coding Standards

- **TypeScript First**: Always prefer TypeScript with strict typing.
- **Functional Style**: Use functional patterns (map, filter, reduce) over imperative loops where possible.
- **Modern Syntax**: Use ES2024+ features.
- **Naming**: Use descriptive names. `isUserAuthenticated` is better than `auth`.

## 🛠️ Tool Usage

- **npm**: Standardize on `npm` for all package management commands.
- **Prettier**: Always run `npm run format` after modifying files if the script exists.
- **Tests**: When fixing a bug, first create a reproduction test case to confirm the failure state.

## 📝 Documentation

- **JSDoc**: Add JSDoc blocks to all public functions and components.
- **README**: Update the project README if you introduce new environment variables or architectural layers.
