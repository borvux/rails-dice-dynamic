class DicesController < ApplicationController
  def home
    render( template: "templates/home")
  end

  def two_six
    render( template: "templates/two_six")
  end

  def two_ten
    render( template: "templates/two_ten")
  end

  def one_twenty
    render( template: "templates/one_twenty")
  end

  def five_four
    render( template: "templates/five_four")
  end

  def dynamic
    render( template: "templates/dynamic")
  end
end
