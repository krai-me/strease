-- test/test_strease.lua
local strease = require("strease")

local function check(description, result, expected)
    -- If result is a table, turn it into a string with just commas, no extra spaces
    if type(result) == "table" then
        result = table.concat(result, ",")
    end

    -- Check if the result matches the expected value
    if result == expected then
        print(description .. " looks good!")
    else
        print(description .. " didn't work as expected. Expected '" .. tostring(expected) .. "', but got '" .. tostring(result) .. "'.")
    end
end

-- Testing stuff. Just making sure everything is working.
print("Running some tests...")

check("Trim '  hello  '", strease.trim("  hello  "), "hello")
check("Split 'apple,banana,cherry'", strease.split("apple,banana,cherry", ","), "apple,banana,cherry")
check("Capitalize 'hello world'", strease.capitalize("hello world"), "Hello World")
check("Replace 'world' with 'Lua'", strease.replace("hello world", "world", "Lua"), "hello Lua")
check("Join {'apple', 'banana', 'cherry'}", strease.join({"apple", "banana", "cherry"}, ", "), "apple, banana, cherry")
check("Lowercase 'HELLO'", strease.lower("HELLO"), "hello")
check("Uppercase 'hello'", strease.upper("hello"), "HELLO")
check("Starts with 'hello'", strease.startswith("hello world", "hello"), true)
check("Ends with 'world'", strease.endswith("hello world", "world"), true)
check("Count 'hello' in 'hello world, hello Lua'", strease.count("hello world, hello Lua", "hello"), 2)

print("All done with the tests!")
