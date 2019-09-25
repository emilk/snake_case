# `snake_case`
## A Rust crate for working with `snake_case` identifiers

The purpose of this crate is to expose the type `SnakeCase`, a wrapper around a `String` that can only contain valid, non-empty snake_case without leading digits. In other words, it always matches `^[_a-z][_a-z0-9]*$`

* Non-empty
* Starts with a lower case ASCII letter or underscore
* Contains only lower case ASCII letters, underscores and digits

NOTE: `___foo__bar_` is considered valid snake case by this crate.

TL;DR: `SnakeCase` can hold any string that is also a valid lower case identifier in Rust.

## Why?
The common case for this is unique identifiers, for which snake case is perfectly suited. `SnakeCase` will always be valid, meaning you will never have the problem of trailing spaces or empty strings.

## Basic usage
``` rust
let id = SnakeCase::from_str("hello_world").unwrap();
assert_eq!(id, "hello_world");
```

## Serde
If you enable the `"serde"` feature then `SnakeCase` will implement `Serialize` and `Deserialize`.

`Deserialize` will fail if a string is not valid snake case.


## Documentation
https://emilk.github.io/snake_case/snake_case/index.html
