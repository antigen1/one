Store::Application.routes.draw do
  devise_for :users

   resources :items do
     get :upvote, on: :member
     get :exepensive, on: :collection 
   end

   #match ':controller(/:action(/:id))(.:format)'
end
