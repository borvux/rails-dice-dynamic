class DiceController < ApplicationController
  def index
    render({ :template => "dice/index" })
  end

  def two_six
    roll(2, 6)
    render({ :template => "dice/two_six" })
  end

  def two_ten
    roll(2, 10)
    render({ :template => "dice/two_ten" })
  end

  def one_twenty
    roll(1, 20)
    render({ :template => "dice/one_twenty" })
  end

  def five_four
    roll(5, 4)
    render({ :template => "dice/five_four" })
  end

  def dynamic
    @dices = params.fetch("dice").to_i
    @sides = params[:sides].to_i

    roll(@dices, @sides)
    render({ :template => "dice/dynamic"})
  end

  private

  def roll(dices, sides)
    @rolls = []

    dices.times do 
      die = rand(1..sides)
      @rolls.push(die)
    end
  end
end
