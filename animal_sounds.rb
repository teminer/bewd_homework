puts "Please enter the name of an animal that makes an animal sound.\n"
animal = gets.chomp

puts "What sound does a " + animal.downcase + " make?\n"
sound = gets.chomp + ", "

puts "How many times would you like the " + animal + " to vocalize this?"
multiplier = gets.chomp.to_i 

puts "The " + animal.downcase + " goes " + sound.downcase*multiplier