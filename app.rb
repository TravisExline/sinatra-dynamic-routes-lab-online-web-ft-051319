require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number]
    (num.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrases = ""
    @number.times do
      @phrases = @phrases + @phrase
    end
    @phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operations]
    when "add"
      @answer = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @answer = params[:number1].to_i / params[:number2].to_i
    end
  @answer.to_s
end
end
