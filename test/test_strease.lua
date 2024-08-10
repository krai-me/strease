-- test/test_strease
local strease = require("strease")

-- Utility function for checking results
local function check(description, result, expected)
    -- If the result is a table, let's flatten it into a comma-separated string
    if type(result) == "table" then
        result = table.concat(result, ",")
    end

    -- Compare the actual result with the expected one
    if result == expected then
        print("[PASS] " .. description)
    else
        print("[FAIL] " .. description)
        print("  Expected: '" .. tostring(expected) .. "'")
        print("  Got:      '" .. tostring(result) .. "'")
    end
end

-- Let's start running our tests
print("Starting tests...")

-- Testing basic string operations
check("Trimming spaces from '  hello  '", strease.trim("  hello  "), "hello")
check("Splitting 'apple,banana,cherry' by comma", strease.split("apple,banana,cherry", ","), "apple,banana,cherry")
check("Capitalizing 'hello world'", strease.capitalize("hello world"), "Hello World")
check("Replacing 'world' with 'Lua' in 'hello world'", strease.replace("hello world", "world", "Lua"), "hello Lua")
check("Joining table {'apple', 'banana', 'cherry'} with ', '", strease.join({"apple", "banana", "cherry"}, ", "), "apple, banana, cherry")
check("Converting 'HELLO' to lowercase", strease.lower("HELLO"), "hello")
check("Converting 'hello' to uppercase", strease.upper("hello"), "HELLO")

-- Testing boolean checks on strings
check("Checking if 'hello world' starts with 'hello'", strease.startswith("hello world", "hello"), true)
check("Checking if 'hello world' ends with 'world'", strease.endswith("hello world", "world"), true)

-- Testing counting functionality
check("Counting occurrences of 'hello' in 'hello world, hello Lua'", strease.count("hello world, hello Lua", "hello"), 2)

-- Additional edge cases to ensure robustness
check("Trimming a string without leading/trailing spaces: '...hello...'", strease.trim("...hello..."), "...hello...")
check("Capitalizing a single word 'lua'", strease.capitalize("lua"), "Lua")
check("Joining an empty table", strease.join({}, ", "), "")
check("Checking startswith on an empty string", strease.startswith("", ""), true)
check("Counting a non-existent substring in 'hello world'", strease.count("hello world", "notfound"), 0)

-- All tests are done!
print("All tests completed!")
