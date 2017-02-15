Part I

Create a Person class with a constructor (the initialize method) that requires two arguments, the first_name and the last_name of the person. We can create Person objects using Person.new(first_name, last_name), with the names being those of the person we are creating.

Remember to save this code in a person.rb file. You should be able to replicate output similar to the following pry session using this new constructor.

$ pry
pry(main)> require_relative "person"
=> true
pry(main)> Person.new('John', 'Smith')
=> #<Person:0x007f8533202960 @first_name="John", @last_name="Smith">
Show Solution

Part II

Remember how you can set default arguments in your method definitions? Modify your Person class constructor so that it takes one or two arguments. If I specify one argument, assume the person's entire name is specified. If I specify two arguments, assume the first_name and last_name are specified.

You should be able to replicate output similar to the following pry session using this new constructor.

pry(main)> Person.new('John Smith')
=> #<Person:0x007fdf2b1f6f28 @first_name="John", @last_name="Smith">
pry(main)> Person.new('John', 'Smith')
=> #<Person:0x007fdf2b30e550 @first_name="John", @last_name="Smith">
pry(main)> Person.new('Jane', 'Doe')
=> #<Person:0x007fdf2b3eea10 @first_name="Jane", @last_name="Doe">
Show Solution

Extra Credit: Part III

As an extra challenge, modify your constructor so that it can support one, two, or three arguments, with the last argument being an optional middle_name. Modify the case where if one argument is supplied, your constructor attempts to figure out the first name, last name, and middle name.

Consider the following cases of construction for "Jane Sally Doe" and "John Michael Smith". You should be able to replicate output similar to the following pry session using this new constructor.

pry(main)> Person.new('Jane Sally Doe')
=> #<Person:0x007f8dc4804b08 @first_name="Jane", @last_name="Doe", @middle_name="Sally">
pry(main)> Person.new('Jane Doe')
=> #<Person:0x007f8dc5033e78 @first_name="Jane", @last_name="Doe">
pry(main)> Person.new('Jane', 'Doe', 'Sally')
=> #<Person:0x007f8dc53283e0 @first_name="Jane", @last_name="Doe", @middle_name="Sally">
pry(main)> Person.new('John', 'Smith', 'Michael')
=> #<Person:0x007f8dc53d8ba0 @first_name="John", @last_name="Smith", @middle_name="Michael">
pry(main)> Person.new('John', 'Smith')
=> #<Person:0x007f8dc48f1070 @first_name="John", @last_name="Smith", @middle_name=nil>
