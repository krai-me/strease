-- src/strease.lua
local strease = {}

-- Trim off extra spaces from both ends of the string
function strease.trim(s)
    return s:match("^%s*(.-)%s*$") -- Clean up those pesky spaces on the edges.
end

-- Split the string by a separator (default is space)
function strease.split(s, sep)
    local parts = {}
    for part in s:gmatch("([^" .. (sep or " ") .. "]+)") do
        table.insert(parts, part) -- Break it down by the given separator.
    end
    return parts
end

-- Capitalize the first letter of each word
function strease.capitalize(s)
    return s:gsub("(%a)([%w]*)", function(a, b) return a:upper() .. b:lower() end) -- Make each word start with a bang.
end

-- Replace all instances of 'old' with 'new'
function strease.replace(s, old, new)
    return s:gsub(old, new) -- Swap out the old for the shiny new.
end

-- Join table elements into a single string with a separator
function strease.join(tbl, sep)
    return table.concat(tbl, sep or " ") -- Combine everything with your choice of glue.
end

-- Convert the string to lowercase
function strease.lower(s)
    return s:lower() -- Tone it down to lowercase.
end

-- Convert the string to uppercase
function strease.upper(s)
    return s:upper() -- Shout it out in uppercase!
end

-- Check if the string starts with 'prefix'
function strease.startswith(s, prefix)
    return s:sub(1, #prefix) == prefix -- Does it kick off with the right start?
end

-- Check if the string ends with 'suffix'
function strease.endswith(s, suffix)
    return s:sub(-#suffix) == suffix -- Does it finish strong with the right ending?
end

-- Count occurrences of 'sub' in the string
function strease.count(s, sub)
    local count = 0
    for _ in s:gmatch(sub) do count = count + 1 end -- Tallying up the appearances of 'sub'.
    return count
end

return strease
