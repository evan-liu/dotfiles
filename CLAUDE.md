# Development Guidelines

## Coding Style

### Principles

- **Be Precise, yet Concise**
- Prioritize precision and clarity over brevity
- Optimize API design for clarity at the call site
- Minimize unnecessary code and diff noise

### File Organization & Project Structure

#### Module Organization

- Prefer feature-based organization (colocation) over type-based
- Group related files together in feature directories

#### Naming Conventions

Use kebab-case for all folder and file names. e.g. `/user-profile/user-profile.tsx`.

### Import/Export Patterns

- Use named exports if they are imported in other code
- Use default exports only when required by frameworks or tools

## JavaScript/TypeScript

### Code Formatting

Prettier with config:

```js
/** @type {import('prettier').Config} */
export default {
  singleQuote: true,
  semi: false,
  bracketSameLine: true,
}
```

### Variable Declaration

Use `const` only for true constant values, e.g. `const GRAVITY = 9.81`. 
Otherwise use `let` and:

- Keep it close to the first use
- Keep its scope short
- Do not reassign variables unless the current scope clearly owns them
  - ✅ In a short, pure function
  - ⚠️ In the same module
  - ❌ From another module

### Equality Comparisons

Prefer `==` over `===` in TypeScript.

Before comparing, ensure both operands have types narrowed to `T` 
or `T | null | undefined` (then `===` works the same as `==`).

`if (a == false)` when `a` is of type:
- ✅ `boolean`
- ✅ `boolean | undefined`
- ❌ `boolean | string`

### Naming Conventions

**Boolean variables**: Omit `is`/`has` prefix unless necessary for clarity:

- ✅ `disabled` > `isDisabled`, `loading` > `isLoading`, `visible` > `isVisible`
- ⚠️ `isOwner` (keep prefix when ambiguous)
- ⚠️ `hasAccess` (keep prefix when ambiguous)
