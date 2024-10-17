require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:num_dies/:num_sides") do
  @dies = params.fetch("num_dies").to_i
  @sides = params.fetch("num_sides").to_i
  
  @rolls = []
  @dies.times do
    die = rand(1..@sides)
    @rolls.push(die)
  end

  erb(:flexible)
end
