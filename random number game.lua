--im gonna code a game where the player has to guess a random number the program picks between 1 and 10 
-- the player has 3 tries to guess the number
-- if the player guesses the number, they win and the program ends
-- if the player does not guess the number, they lose and the program ends
local randomNumber = math.random(1, 10) -- generates a random number between 1 and 10
local guessed = false -- variable to check if the player has guessed the number 
local tries = 3 -- number of tries the player has

print("Guess a number between 1 and 10")
print("You have " .. tries .. " tries to guess the number.")

while tries > 0 and not guessed do
    local playerGuess = io.read() -- get the player's guess
    local guessNumber = tonumber(playerGuess) -- convert the guess to a number

    if guessNumber == randomNumber then
        print("You guessed the number! You win!")
        guessed = true
    else
        tries = tries - 1 -- subtract one from the number of tries left
        if tries == 0 then
            print("You lose! The number was " .. randomNumber .. ".")
        else
            print("Wrong guess! You have " .. tries .. " tries left.")
            if tries > 0 then
                print("Try again!")
            end
        end
    end
end
