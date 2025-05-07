while true do
    print("Type two numbers to add or subtract them")
    local a = io.read("*n")
    local b = io.read("*n")
    local sum = a + b
    local interchange = a - b
    print("The sum of " .. a .. " and " .. b .. " is " .. sum)

    print("Type enter to restart")
    io.read() -- Wait for user input to restart
end