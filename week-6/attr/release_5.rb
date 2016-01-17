class NameData

  attr_reader :name

  def initialize
    @name = "Thomas"
  end

end

class Greetings

  def initialize
    @person = NameData.new
  end

  def hello
    "Hello #{@person.name}, How wonderful to see you today"
  end
end

puts Greetings.new.hello
