#Rails.application.routes.draw do
#  resources :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/lovingforms/users/new' , to: 'user#new'
  get '/lovingforms/users/create' , to: 'user#create'
end
