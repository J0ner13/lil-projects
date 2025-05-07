-- Initialize the loop condition variable
local fuck = true

while fuck == true do
    -- Prompt the user to type a dice number
    print("Type what dice you want to roll")
    
    -- Read input as a number
    local dice = io.read("*n")
    
    -- If the input is invalid (non-number), print an error message and clear input buffer
    if not dice then
        print("Please enter a valid number for the dice.")
        io.read()  -- This consumes any remaining invalid input in the buffer
    else
        -- If the input is valid, handle the dice roll
        local result = nil

        if dice == 20 then
            result = math.random(1, 20)
        elseif dice == 6 then
            result = math.random(1, 6)
        else
            -- For custom dice sizes
            result = math.random(1, dice)
        end

        -- Display the result of the roll
        print("You rolled a " .. result)
        
        -- Special messages for natural 20 or natural 1
        if result == 20 then
            print("NAT 20 BABY WOOOOOO")
        elseif result == 1 then
            print("You rolled a nat 1...get fucked idiot")
        end
    end

    -- Ask if the user wants to roll again
    io.write("Do you want to roll again? (yes/no): ")
    local based = io.read("*l")  -- Read the user's response
    local cool = string.lower(based) 
   
    if cool == "no" then

        print("Thanks for being boss")
        fuck = false
    end
    local time = 0.5
    local start_time = os.time() +time
    while os.time() < start_time do
        
    end
end
