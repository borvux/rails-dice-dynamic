Rails.application.routes.draw do
  get "/", { controller: "dices", action: "home" }
  get "/dice/2/6", { controller: "dices", action: "two_six" }
  get "/dice/2/10", { controller: "dices", action: "two_ten" }
  get "/dice/1/20", { controller: "dices", action: "one_twenty" }
  get "/dice/5/4", { controller: "dices", action: "five_four" }
  get "/dice/:d/:s", { controller: "dices", action: "dynamic" }
end
