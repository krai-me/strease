-- test/test_strease
local strease = require("strease")

-- Just a simple function to check if stuff works
local function check(desc, got, expctd)
    -- If result is a table, make it a string by joining with commas
    if type(got) == "table" then
        got = table.concat(got, ",")
    end

    -- Print if we got what we wanted or not
    if got == expctd then
        print("[OK] " .. desc)
    else
        print("[FAIL] " .. desc)
        print("  Expected: '" .. tostring(expctd) .. "'")
        print("  Got:      '" .. tostring(got) .. "'")
    end
end

-- Start running tests
print("Starting test suite...")

-- Do some basic string tests
check("Trimming '  hello  ' should be 'hello'", strease.trim("  hello  "), "hello")
check("Split 'apple,banana,cherry' by comma", strease.split("apple,banana,cherry", ","), "apple,banana,cherry")
check("Capitalize 'hello world'", strease.capitalize("hello world"), "Hello World")
check("Replace 'world' with 'Lua' in 'hello world'", strease.replace("hello world", "world", "Lua"), "hello Lua")
check("Join {'apple', 'banana', 'cherry'} with ', '", strease.join({"apple", "banana", "cherry"}, ", "), "apple, banana, cherry")
check("Lowercase 'HELLO'", strease.lower("HELLO"), "hello")
check("Uppercase 'hello'", strease.upper("hello"), "HELLO")

-- Test some boolean stuff
check("Does 'hello world' start with 'hello'?", strease.startswith("hello world", "hello"), true)
check("Does 'hello world' end with 'world'?", strease.endswith("hello world", "world"), true)

-- Check how many times something appears
check("Count 'hello' in 'hello world, hello Lua'", strease.count("hello world, hello Lua", "hello"), 2)

-- Edge cases for fun
check("Trim '...hello...' should still be '...hello...'", strease.trim("...hello..."), "...hello...")
check("Capitalize 'lua' should be 'Lua'", strease.capitalize("lua"), "Lua")
check("Joining empty table should be empty string", strease.join({}, ", "), "")
check("Empty string starts with empty string?", strease.startswith("", ""), true)
check("Count non-existent 'notfound' in 'hello world'", strease.count("hello world", "notfound"), 0)

-- End of tests
print("All tests are done. Nice!")
