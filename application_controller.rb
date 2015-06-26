require 'bundler'
Bundler.require
require_relative "models/conversions.rb"
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/' do
    ingredient = params["ingredient"]
    grams= params["grams"]
    if ingredient.downcase == "sugar" 
      @result=convert_sugar(grams)
    elsif ingredient.downcase == "flour" || ingredient== "Flour"
      @result=convert_flour(grams)
    elsif ingredient.downcase== "butter"
      @result= convert_butter(grams)
    elsif ingredient.downcase=="powdered sugar" || ingredient.downcase=="confectioners sugar"
      @result= convert_powdered_sugar(grams)
    else @result="Sorry, that ingredient is not recognized. Please try again."
    end
    erb :result
  end

end

