def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def divide(num1, num2)
  num1 / num2
end

def multiply(num1, num2)
  num1 * num2
end

puts "Simple calculator!"
print ">>"

numbers = $stdin.gets.chomp.split(" ")

num1 = numbers[0].to_f
num2 = numbers[2].to_f
opp = numbers[1].to_s

def calculate(num1, opp, num2)
  if opp == "+"
    return add(num1, num2)
  elsif opp == "-"
    return subtract(num1, num2)
  elsif opp == "*"
    return multiply(num1, num2)
  elsif opp == "/"
    if num1 == 0 || num2 == 0
      puts "Please don't use a 0"
      load 'calculator.rb'
    else
      return divide(num1, num2)
    end
  else
    puts "Only simple math please"
    load 'calculator.rb'
  end
end

 puts calculate(num1, opp, num2)
