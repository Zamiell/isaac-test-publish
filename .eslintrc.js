module.exports = {
  parser: "@typescript-eslint/parser",
  plugins: ["@typescript-eslint"],
  rules: {
    "@typescript-eslint/strict-enums": "error",
  },
  parserOptions: {
    // ESLint needs to know about the project's TypeScript settings in order for TypeScript-specific
    // things to lint correctly
    // We do not point this at "./tsconfig.json" because certain files (such at this file) should be
    // linted but not included in the actual project output
    project: "./tsconfig.eslint.json",
  },
};
