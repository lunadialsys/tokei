--! 40 lines 24 code 9 comments 7 blanks
--! ```lua
--! print('Hello, world!')
--! -- A comment
--! --[[ Another comment ]]
--! ```

--[[ This is ONE block comment: --[[
]]

print('Hello, world!') --[[ --[[ a nested comment ]] --]]
print("Hello, again, world!")
print([[This is a
multiline string.]])

local type FindIt = function(haystack: string, needle: string): boolean
local find_it: FindIt = function(x: string, y: string): boolean
    for i = 1, #x do
        local sub = string.sub(x, i, i+#y-1)
        if sub == y then
            return true
        end
    end
    return false
end

local found_it = find_it([["butterfly in the wind"--]], "wind")
print('Have we found it? '..(found_it and "Yes!" or "No..."))

-- it really doesn't!
local _this_does_not_start = -- [[
    [[ until this line ]] --]]

local record Point
    x: number -- Numbers can be decimal, so they are not integers.
    y: number -- Where is this pointing to?
end

local p: Point = {x = 25, y = 42 --[[launch coordinates]]}
print(string.format("{ %f, %f }", p.x, p.y))