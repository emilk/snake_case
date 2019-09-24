# `snake_case`
## A Rust crate for working with `snake_case` identifiers

The purpose of this crate is to expose the type `SnakeCase`, a wrapper around a `String` that can only contain valid, non-empty snake_case without leading digits. In other words, it always matches `^[_a-z][_a-z0-9]*$`

* Non-empty
* Starts with a lower case ASCII letter or underscore
* Contains only lower case ASCII letters, underscores and digits

## Why?
The common case for this is unique identifiers, for which snake case is perfectly suited. `SnakeCase` will always be valid, meaning you will never have the problem of trailing spaces or empty strings.

## Basic usage
``` rust
let id = SnakeCase::from_str("hello_world").unwrap();
assert_eq!(id, "hello_world");
```

`SnakeCase` implements `serde::Serialize` and `serde::Deserialize`.

## Documentation
https://emilk.github.io/snake_case/snake_case/index.html
