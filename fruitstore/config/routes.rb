# == Route Map
#
#    Prefix Verb URI Pattern           Controller#Action
#    fruits GET  /fruits(.:format)     fruits#index
#           POST /fruits(.:format)     fruits#create
# new_fruit GET  /fruits/new(.:format) fruits#new
#     fruit GET  /fruits/:id(.:format) fruits#show
#

Rails.application.routes.draw do
  resources :fruits, :except => [:destroy,:edit,:update,:new]
end
