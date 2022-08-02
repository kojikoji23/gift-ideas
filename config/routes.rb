Rails.application.routes.draw do
  get 'gifts/index'
  root to: "gifts#index"
end
