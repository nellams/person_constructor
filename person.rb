### Part I

# Create a `Person` class with a constructor (the `initialize` method) that
# requires two arguments, the `first_name` and the `last_name` of the person.
# We can create `Person` objects using `Person.new(first_name, last_name)`,
# with the names being those of the person we are creating.

class Person
  attr_accessor :first_name, :last_name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name

  end
end

### Part II

class Person
  attr_accessor :first_name, :last_name
  def initialize(first_name, last_name = nil)
    if first_name.include?(" ") && if last_name == nil
      whole_name = first_name.split(" ")
      @first_name = whole_name[0]
      @last_name = whole_name[-1]
    else
      @first_name = first_name
      @last_name = last_name
    end
  end
end
end

### Part 3

class Person
  attr_accessor :first_name, :last_name, :middle_name
  def initialize(first_name, last_name = nil, middle_name = nil)
    whole_name = first_name.split(" ")
    if last_name == nil && whole_name.length == 2
          @first_name = whole_name[0]
          @last_name = whole_name[-1]
    elsif last_name == nil && whole_name.length > 2
          @first_name = whole_name[0]
          @middle_name = whole_name[1]
          @last_name = whole_name[-1]
    elsif last_name != nil && middle_name == nil && whole_name.length > 1
      @first_name = whole_name[0]
      @middle_name = whole_name[-1]
      @last_name = last_name
    else
      @middle_name = middle_name
      @first_name = first_name
      @last_name = last_name
    end
    end
  end


# person =Person.new("sarah marie", "allen")
# puts person.first_name
# puts person.middle_name
# puts person.last_name
