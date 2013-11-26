GreatEvent::Application.routes.draw do
  devise_for :users
   root 'welcome#index'
   resources :users, only: :show do
     resources :events
   end

end
