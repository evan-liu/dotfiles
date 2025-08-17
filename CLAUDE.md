# Development Guidelines

## Coding Style

- **Be Precise, yet Concise**
- Prioritize precision and clarity over brevity
- Optimize API design for clarity at the call site
- Minimize unnecessary code and diff noise

### JavaScript/TypeScript

#### Variable Declaration

Use `const` only for true constant values, e.g. `const GRAVITY = 9.81`. 
Otherwise use `let` and:

- Keep it close to the first use
- Keep its scope short
- Do not reassign variables unless the current scope clearly owns them
  - ✅ In a short, pure function
  - ⚠️ In the same module
  - ❌ From another module

#### Equality Comparisons

Prefer `==` over `===` in TypeScript.

Before comparing, ensure both operands have types narrowed to `T` 
or `T | null | undefined` (then `===` works the same as `==`).

`if (a == false)` when `a` is of type:
- ✅ `boolean`
- ✅ `boolean | undefined`
- ❌ `boolean | string`
