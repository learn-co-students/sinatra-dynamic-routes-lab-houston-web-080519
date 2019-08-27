require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse = params['name']
    "This is the route where we're gonna reverse the name: #{@reverse.reverse!}"
  end

  get '/square/:number' do
   @square = params['number'] #got number(string)
       @integer =  @square.to_i
   # turn to integer 
       @number_squared = @integer * @integer
   #square
    "This is the number that gets squared #{@number_squared.to_s}" #interpolate AS string

  end 

  get '/say/:number/:phrase' do
    @number = params['number'].to_i
    @phrase = params['phrase']
    @string = ""
    @counter = 0 
    
    @number.times do
      @string += @phrase + " "
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params['word1']
    @word2 = params['word2']
    @word3 = params['word3']
    @word4 = params['word4']
    @word5 = params['word5']
    
    @phrase = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    
    @phrase
  end 

  get '/:operation/:number1/:number2' do 
    resp = Rack::Response.new
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if params[:operation] == 'add'
      resp.write "#{@number1 + @number2}"
     

    elsif params[:operation] == 'subtract'
      resp.write "#{@number1 - @number2}"
    

    elsif params[:operation] == 'multiply'
      resp.write "#{@number1 * @number2}"
    
     
    elsif params[:operation] == 'divide'
      new_num = @number1 / @number2
      resp.write "#{new_num}"

    end
  end 
  
  
end