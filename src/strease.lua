-- src/strease.lua
local strease = {}

-- Trim off extra spaces from both ends of the string
function strease.trim(s)
    return s:match("^%s*(.-)%s*$") -- Removing leading and trailing spaces like a pro!
end

-- Split the string by a separator (default is space)
function strease.split(s, sep)
    local parts = {}
    for part in s:gmatch("([^" .. (sep or " ") .. "]+)") do
        table.insert(parts, part) -- Split it into chunks based on the separator.
    end
    return parts
end

-- Capitalize the first letter of each word
function strease.capitalize(s)
    return s:gsub("(%a)([%w]*)", function(a, b) return a:upper() .. b:lower() end) -- Making sure your text looks sharp.
end

-- Replace all instances of 'old' with 'new'
function strease.replace(s, old, new)
    return s:gsub(old, new) -- Swapping out the old for the new.
end

-- Join table elements into a single string with a separator
function strease.join(tbl, sep)
    return table.concat(tbl, sep or " ") -- Putting everything together with style.
end

-- Convert the string to lowercase
function strease.lower(s)
    return s:lower() -- Lowercasing for that laid-back vibe.
end

-- Convert the string to uppercase
function strease.upper(s)
    return s:upper() -- Uppercasing for when you need to make a statement!
end

-- Check if the string starts with 'prefix'
function strease.startswith(s, prefix)
    return s:sub(1, #prefix) == prefix -- Checking if it starts right.
end

-- Check if the string ends with 'suffix'
function strease.endswith(s, suffix)
    return s:sub(-#suffix) == suffix -- Checking if it ends on a high note.
end

-- Count occurrences of 'sub' in the string
function strease.count(s, sub)
    local count = 0
    for _ in s:gmatch(sub) do count = count + 1 end -- Counting how many times 'sub' shows up.
    return count
end

return strease
