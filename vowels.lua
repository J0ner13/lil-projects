print("type a string to check for vowels and consonants")
local UserInput = io.read()
local Vowels = string.match(UserInput, "[aeiouAEIOU]")  -- Check for vowels in the string
local consonants = string.match(UserInput, "[^aeiouAEIOU]")  -- Check for consonants in the string
if Vowels then
    remove = string.gsub(UserInput, "[aeiouAEIOU]", "")  -- Remove vowels from the string
    print("The string without vowels is: " .. remove)
else
    print("The string does not contain vowels")
end
if consonants then
    remove = string.gsub(UserInput, "[^aeiouAEIOU]", "")  -- Remove consonants from the string
    print("The string without consonants is: " .. remove)
else
    print("The string does not contain consonants")
end

