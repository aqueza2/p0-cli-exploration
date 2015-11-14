# Virus Predictor

# I worked on this challenge [by myself].
# We spent [1.25] hours on this challenge.

# EXPLANATION OF require_relative
#require relative allows us to access the information in the referenced file.
#instead of having to input each value, we can just have a list of all the values and thus we can access them by linking both of them together using require_relative.
require_relative 'state_data'

class VirusPredictor
#Initialize allows you to start your class and it defines which variables will be available to use later on in your methods.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#virus_effects calls the predicted_deaths method as well as the speed_of_deaths method.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
#private stops us from being able to call the methods after it (predicted deaths and speed of the spread) from outside the class.
  private
#predicted deaths takes different thresholds of population density and it calculates the number of deaths depending on that population density. If a state meets a certain condition, then it will that that information and it will calculate the number of predicted deaths, with the given algorithm.

  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#based on the population
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each_key do |state|
  virus = VirusPredictor.new(state,STATE_DATA[state][:population_density],STATE_DATA[state][:population])
  virus.virus_effects
end

#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
In the state_data file, the hash shown is a nested hash.
What does require_relative do? How is it different from require?
  require_relative links the state_data.rb file to the my_solution file.require_relative is used when you have a file from the same directory.
What are some ways to iterate through a hash?
When refactoring virus_effects, what stood out to you about the variables, if anything?
the variables were already defined in the intialize method, and they were used inside each of the
What concept did you most solidify in this challenge?
The concept of iterating through a hash. All this time I've felt more comfortable with arrays, but this is the first time I ever iterated through a hash on my own and I fully understood what it was doing.
=end