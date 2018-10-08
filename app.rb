require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @newname = @name.reverse
    "#{@newname}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @array = ""
    @num.times {@array << params[:phrase]}
    "#{@array}"
  end

  get '/say/:w1/:w2/:w3/:w4/:w5' do
    "#{params[:w1] + " " + params[:w2] + " " + params[:w3] + " " + params[:w4] + " " + params[:w5] + "."}"
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num2 - @num1}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    end
  end

end
