require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    "Hello"
  end

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase*@number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    "#{@number1+@number2} #{@number1-@number2} #{@number1*@number2} #{@number1/@number2}"
  end
end