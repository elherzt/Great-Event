GreatEvent::Application.routes.draw do
  devise_for :users
   root 'welcome#index'
   resources :users, only: :show do
     resources :events
   end
   mount JasmineRails::Engine => "/specs" if defined?(JasmineRails)

end
