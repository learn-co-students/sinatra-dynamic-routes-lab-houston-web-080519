require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do 
    "Hello World"
  end 

  get '/reversename/:name' do 
    @name = params[:name]
    @reverse_name = @name.reverse 
    "#{@reverse_name}"
  end 

  get '/square/:number' do 
    @number = params[:number]
    @num = @number.to_i
    @square = @num * @num
    "#{@square}"
  end 

  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end 

  get '/add/:number1/:number2' do 
    @number1 = params[:number1]
    @number1_i = @number1.to_i
    @number2 = params[:number2]
    @number2_i = @number2.to_i
    @sum = 0 
    @sum = @number1_i + @number2_i
    "#{@sum}"
  end 

  get '/subtract/:number1/:number2' do 
    @number1 = params[:number1]
    @number1_i = @number1.to_i
    @number2 = params[:number2]
    @number2_i = @number2.to_i
    @sum = 0 
    @sum = @number1_i - @number2_i
    "#{@sum}"
  end

  get '/multiply/:number1/:number2' do 
    @number1 = params[:number1]
    @number1_i = @number1.to_i
    @number2 = params[:number2]
    @number2_i = @number2.to_i
    @sum = 0 
    @sum = @number1_i * @number2_i
    "#{@sum}"
  end

  get '/divide/:number1/:number2' do 
    @number1 = params[:number1]
    @number1_i = @number1.to_i
    @number2 = params[:number2]
    @number2_i = @number2.to_i
    @sum = 0 
    @sum = @number1_i / @number2_i
    "#{@sum}"
  end

end