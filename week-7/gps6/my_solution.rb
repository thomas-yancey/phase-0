# Virus Predictor

# I worked on this challenge by myself, with: Alex Delapana as my guide
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative requires a file relative to the path you are in so you do not need to give
# a full filepath but rather just relative to your current file
require_relative 'state_data'

class VirusPredictor

  # initializes the class with the arguments state_of_origin, population_density, population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # virus_effects runs the private methods predicted_deaths of speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # predicted_deaths takes the population_density, population and state.
  # runs through a conditional statement, and multiplies the population by a given multiplier
  # depending on the population density and applies that amount to the varialbe number_of_deaths
  # prints a string telling the state and number_of_deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    infinity = Float::INFINITY
    case @population_density
    when 200..infinity then number_of_deaths = (@population * 0.4).floor
    when 150..199 then number_of_deaths = (@population * 0.3).floor
    when 100..149 then number_of_deaths = (@population * 0.2).floor
    when 50..99 then number_of_deaths = (@population * 0.1).floor
    else number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # takes population_density and state as arguments, creates a local variable of speed and sets it to 0.0
  # runs through conditional and adds a certain amount to speed depending on population_density
  # puts a string of " and will spread across the state in #{speed} months.\n\n"

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    infinity = Float::INFINITY
    speed = 0.0
    case @population_density
    when 200..infinity then speed += 0.5
    when 150..199 then speed += 1
    when 100..149 then speed += 1.5
    when 50..99 then speed += 2
    else speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, state_hash|
  state = VirusPredictor.new(state, state_hash[:population_density], state_hash[:population])
  state.virus_effects
end

#=======================================================================
# Reflection Section





# What are the differences between the two different hash syntaxes shown in the state_data file?
#   The state_data hash uses the spaceship operator style of creating key values and uses a string
# as a key. The state_data value hash uses the shorthand version for creating symbols with the
# colon after the symbol key.

# What does require_relative do? How is it different from require?
#   require_relative requires a file relative to the directory your file is currently in

# What are some ways to iterate through a hash?
#   you can iterate through with each and piping |key,value|. You can use alot of the same methods as
# array, just realize it will probably convert your hash to an array.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
#   Instance variables are already available throughout the method so need to call them as arguments

# What concept did you most solidify in this challenge?
#   I most solidified my knowledge of the case statement and how to get it down to one line with the
# then statement
