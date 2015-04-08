puts "Please enter the name of an animal that makes an animal sound.\n"
animal = gets.chomp.downcase

puts "What sound does a " + animal + " make?\n"
sound = gets.chomp

puts "How many times would you like the " + animal + " to vocalize this?"
multiplier = gets.chomp.to_i 

puts "The " + animal + " goes " + (sound + ", ") * (multiplier - 1) + sound