require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "Hello World"
  end
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  get '/square/:number' do
    @number = params[:number].to_i
    square_value = "#{@number ** 2}"
    return square_value
  end
  get '/say/:number/:phrase' do
    this_number = params[:number].to_i
    @phrase = params[:phrase]
    i = 0
    phrases = []
    while i < this_number
      phrases << @phrase
      i += 1
    end
    return phrases
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    new_string = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    return new_string
  end
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if 
      @operation == "add"
        return "#{@number1 + @number2}"
    end
    if 
      @operation == "subtract"
        return "#{@number1 - @number2}"
    end
    if 
      @operation == "multiply"
        return "#{@number1 * @number2}"
    end
    if 
      @operation == "divide"
        return "#{@number1 / @number2}"
    end
  end
end