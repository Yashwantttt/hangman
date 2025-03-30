require_relative "instruction.rb"
require_relative "wrd_display.rb"
require_relative "wordSelector.rb"

instruction  #this is to import instruction from instruction file
word = wordpicker #word from wordselector file
len = word.length
user_input = Array.new(len,0)

chance = 6

puts word
while chance >0
  displayer(word,user_input)
  puts "\nEnter your guess :"
  user_input = gets.downcase.chomp
  if user_input == word 
    puts "You Won !!!"
    break
  else
    chance -=1
  end
  puts "You have #{chance} chance left"
end