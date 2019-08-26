require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    resp = Rack::Response.new
    backwards = params[:name].reverse
    resp.write "#{backwards}"
    resp.finish
  end
  
  get '/square/:number' do
    resp = Rack::Response.new
    square = params[:number].to_i ** 2
    resp.write "#{square}"
    resp.finish
  end
  
  get '/say/:number/:phrase' do
    resp = Rack::Response.new
    x = params[:number].to_i
    x.times do
      resp.write "#{params[:phrase]}"
    end
    resp.finish
     
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    resp = Rack::Response.new
    cat = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
    resp.write "#{cat}."
    resp.finish
  end
  
  get '/:operation/:number1/:number2' do
    resp = Rack::Response.new
    if params[:operation] == "add"
      resp.write "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "subtract"
      resp.write "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation] == "multiply"
      resp.write "#{params[:number1].to_i * params[:number2].to_i}"
    elsif params[:operation] == "divide"
      resp.write "#{params[:number1].to_i / params[:number2].to_i}"
    end
    
  end

end