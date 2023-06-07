# BMI calculator
################

def bmiCalc(weight, height)
    if weight <= 0 || height <= 0
        abort "Error: invalid weight or height"
    end
    bmi = weight / height**2
end

# Input

puts 'BMI Calculator'
puts '***************************'
puts 'Enter weight in kilograms'
weight = gets.chomp.to_f
puts 'Enter height in meters'
height = gets.chomp.to_f
puts '***************************'
bmi = bmiCalc(weight, height).round(2)
puts "BMI = #{bmi}"

# Classification

case bmi
when 0...18.5
    puts 'Underweight'
when 18.5...25
    puts 'Normal weight'
when 25...30
    puts 'Overweight'
when 30...35
    puts 'Obesity class 1: Moderate'
when 35...40
    puts 'Obesity class 2: Severe'
when 40...45
    puts 'Obesity class 3: Morbid'
else
    puts 'Obesity class 4: Extreme'
end
