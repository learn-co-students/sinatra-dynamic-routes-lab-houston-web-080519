require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

    get '/reversename/:name' do
      reversed_name = params[:name].reverse
      "#{reversed_name}"
    end

    get '/square/:number' do
      squared = params[:number].to_i ** 2
      "#{squared}"
    end

    get '/say/:number/:phrase' do 
      answer = ""

      params[:number].to_i.times do 
        answer += params[:phrase]
      end   

      answer
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do 
      array = []
      array.push(params[:word1], params[:word2], params[:word3], params[:word4], params[:word5])
      array.join(" ") + "."
    end

    get '/:operation/:number1/:number2' do
      solution = 0
      num1 = params[:number1].to_i 
      num2 = params[:number2].to_i

      case params[:operation]
      when 'add'
        solution = (num1 + num2).to_s
      when 'subtract'
        solution = (num1 - num2).to_s
      when 'multiply'
        solution = (num1 * num2).to_s
      when 'divide'
        solution = (num1 / num2).to_s
      end
    end
end