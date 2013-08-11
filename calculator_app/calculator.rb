require 'pry'

def say(msg)
	puts="=>"+msg
end


puts "Whats the first number?"
num1=gets.chomp

puts "What is the second number?"
num2=gets.chomp

begin
	say "What do you want to do? 1) add 2) subtract 3) multiply 4) divide"
	operator=gets.chomp
end while ![1,2,3,4].include?(operator)


binding.pry

operator=gets.chomp
if operator=='1'
	result=num1.to_i+num2.to_i
elsif operator=='2'
	result=num1.to_i-num2.to_i
elsif operator='3'
	result=num1.to_i*num2.to_i
elsif operator='4'
	result=num1.to_f/num2.to_f
end

say "Result is"+ result.to_s
say "Result is #{result}"