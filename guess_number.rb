# Guess the number game
#######################

def getsCheckInt (input = gets.chomp)
    number = input.to_i
    if number == 0 && input != '0'
        puts 'Error: not a number'
    end
    return number
end

# Setup

limit = 0
puts "Random number upper limit?"
until limit >= 2
    limit = getsCheckInt
    puts "Can't be less than 2, try again" if limit < 2
end

random_number = rand(1..limit)
tries = limit/2

# Game

puts "Guess the number between 1 and #{limit}!"
guess = 0
until guess == random_number || tries <= 0
    puts "Tries remaining: #{tries}"
    guess = getsCheckInt
    if guess > limit || guess <= 0
        puts 'Guess outside range, try again'
        next
    end
    tries -= 1
end

# End

if guess == random_number
    puts "You win! the random number was #{random_number}"
else
    puts "You lost... the random number was #{random_number}"
end
