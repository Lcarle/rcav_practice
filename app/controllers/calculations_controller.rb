class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:number].to_f
    @number_squared = (@number**2).to_f

    render("square.html.erb")
  end

  def square_root
    @number = params[:number].to_f
    @square_root = Math.sqrt(@number).to_f

    render("square_root.html.erb")
  end

  def random
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @random = rand(@num1..@num2).to_i

    render("random.html.erb")
  end

  def payment
    @apr = params[:rate].to_f
    @years = params[:years].to_i
    @principal = params[:principal].to_f

    @months = @years*12
    @mpr = @apr/1200
    @den = 1-(1+@mpr)**(-@months)
    @monthly_payment = (@mpr/@den)*@principal

    render("payment.html.erb")
  end


end
