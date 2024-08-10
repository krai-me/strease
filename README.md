# Strease Library

Welcome to the Strease library. This Lua library is designed to make string manipulation simple and efficient. 

## Installation

To install Strease using LuaRocks:

```sh
luarocks install strease
```
## Usage

```lua
local strease = require("strease")
```
## Functions

Here’s a quick overview of what Strease can do:

### `strease.trim(s)`

Trim extra spaces from both ends of the string.

**Example:**

```lua 
local input = "  hello  "
local trimmed = strease.trim(input)
print(trimmed) -- Output: "hello"
```

### `strease.split(s, sep)`

Split the string into parts based on a separator. Default is a space.

**Example:**

```lua
local input = "apple,banana,cherry"
local separator = ","
local parts = strease.split(input, separator)
for _, part in ipairs(parts) do
    print(part) -- Output: "apple", "banana", "cherry"
end
```

### `strease.capitalize(s)`

Capitalize the first letter of each word.

**Example:**

```lua
local input = "hello world"
local capitalized = strease.capitalize(input)
print(capitalized) -- Output: "Hello World"
```

### `strease.replace(s, old, new)`

Replace all occurrences of `old` with `new`.

**Example:**

```lua
local input = "hello world"
local old = "world"
local new = "Lua"
local replaced = strease.replace(input, old, new)
print(replaced) -- Output: "hello Lua"
```

### `strease.join(tbl, sep)`

Join table elements into a single string with a specified separator. Default is a space.

**Example:**

```lua
local fruits = {"apple", "banana", "cherry"}
local separator = ", "
local joined = strease.join(fruits, separator)
print(joined) -- Output: "apple, banana, cherry"
```

### `strease.lower(s)`

Convert the string to lowercase.

**Example:**

```lua
local input = "HELLO"
local lowercased = strease.lower(input)
print(lowercased) -- Output: "hello"
```

### `strease.upper(s)`

Convert the string to uppercase.

**Example:**

```lua
local input = "hello"
local uppercased = strease.upper(input)
print(uppercased) -- Output: "HELLO"
}
```
### `strease.startswith(s, prefix)`

Check if the string starts with the specified prefix.

**Example:**

```lua
local input = "hello world"
local prefix = "hello"
local starts = strease.startswith(input, prefix)
print(starts) -- Output: true
}
```
### `strease.endswith(s, suffix)`

Check if the string ends with the specified suffix.

**Example:**

```lua
local input = "hello world"
local suffix = "world"
local ends = strease.endswith(input, suffix)
print(ends) -- Output: true
}
```
### `strease.count(s, sub)`

Count how many times the substring `sub` appears.

**Example:**

```lua
local input = "hello world, hello Lua"
local substring = "hello"
local count = strease.count(input, substring)
print(count) -- Output: 2
}
```
## License

This library is released under the MIT License. See the [LICENSE](LICENSE) file for more details.

Happy coding with Strease! If you have any questions or suggestions, feel free to reach out :)
