# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
  def initialize(name)
    @name = name
    @color = "silver"
  end

  def say(words)
    p "*~*#{words}*~*"
  end
end

horned_horse1 = Unicorn.new("Pete")
p horned_horse1

horned_horse1.say("hello world, today is my day")

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  def initialize(name, pet = "bat")
    @name = name
    @pet = pet
    @thirsty = true
  end

  def drink
    @thirsty = false
  end
end

fred = Vampire.new("Fred")
p fred
fred.drink
p fred

rosie = Vampire.new("rosie", "worm")
p rosie

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
  end

  def eat(meals)
    if meals >= 4
      @is_hungry = false
    end
  end
end

lizard = Dragon.new("Oakley", "Toast", "purple")
p lizard

lizard.eat(4)
p lizard

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
    @is_adult = false
    @is_old = false
    @has_ring = has_ring?
  end

  def celebrate_birthday
    @age += 1
    if @age >= 33
      @is_adult = true
    end
    if @age >= 101
      @is_old = true
    end
  end

  def has_ring?
    if @name == "Frodo"
      true
    else
      false
    end
  end

end

shorty = Hobbit.new("Sam", "happy")
p shorty

101.times do
  shorty.celebrate_birthday
end
p shorty
shorty2 = Hobbit.new("Frodo", "sad")
p shorty2
