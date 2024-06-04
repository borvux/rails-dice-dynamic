class DicesController < ApplicationController
  def home
    render(template: "templates/home")
  end

  def two_six
    @rolls = []

    2.times do
      die = rand(1..6)

      @rolls.push(die)
    end
    render(template: "templates/two_six")
  end

  def two_ten
    @rolls = []

    2.times do
      die = rand(1..10)

      @rolls.push(die)
    end

    render(template: "templates/two_ten")
  end

  def one_twenty
    @rolls = []

    1.times do
      die = rand(1..20)

      @rolls.push(die)
    end
    render(template: "templates/one_twenty")
  end

  def five_four
    @rolls = []

    5.times do
      die = rand(1..4)

      @rolls.push(die)
    end
    render(template: "templates/five_four")
  end

  def dynamic
    @num_dice = params.fetch("d").to_i
    @sides = params.fetch("s").to_i
    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end
    render(template: "templates/dynamic")
  end
end
