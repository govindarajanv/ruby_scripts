# Ruby provides the ability to take a block of code, wrap it up in an object (called a proc), 
# store it in a variable, and run the code in the block whenever you feel like

greet = Proc.new do |x|
  puts "Hello #{x}"
end

greet.call "World"
greet.call "Govind"

greet = Proc.new do |x|
  puts "Welcome #{x}"
end

goodbye = Proc.new do |x|
  puts "Goodbye #{x}"
end

def say(arr, proc)
  arr.each { |x| proc.call x}
end

people = ["David", "Amy", "John"]
say(people, greet)
say(people, goodbye)
