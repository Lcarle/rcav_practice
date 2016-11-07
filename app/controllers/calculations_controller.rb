class CalculationsController < ApplicationController
  def instructions
    render("instructions.html.erb")
  end

  def square
    @number = params[:]
    @number_squared = @number**2

    render("square.html.erb")
  end

  def square_root
    @number = params[:]
    @square_root = Math.sqrt(@number)

    render("square_root.html.erb")
  end

  def random
    @num1 = params[:]
    @num2 = params[:]
    @random = rand(@num1..@num2)

    render("random.html.erb")
  end

  def payment
    @apr = params[:].to_f
    @years = params[:].to_i
    @principal = params[:].to_f

    @months = @years*12
    @mpr = @apr/1200
    @den = 1-(1+@mpr)**(-@months)
    @monthly_payment = (@mpr/@den)*@principal

    render("payment.html.erb")
  end


end
