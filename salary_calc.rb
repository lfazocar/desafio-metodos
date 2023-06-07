# Salary increase calculator
############################

def increaseSalary(salary, increase)
    increase /= 100
    return salary * (1+increase)
end

# Input

if ARGV[0] == nil
    puts 'Current salary?'
    salary = gets.chomp.to_f
    puts 'Increase %?'
    increase = gets.chomp.to_f
else
    puts 'Current salary: ' + ARGV[0]
    salary = ARGV[0].to_f
    puts 'Increase %: ' + ARGV[1]
    increase = ARGV[1].to_f
end

# Result

new_salary = increaseSalary(salary, increase).round(2)
puts "New salary will be #{new_salary}"
