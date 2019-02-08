Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, except: :destroy
    end
  end

  namespace :api do
    namespace :v1 do
      resources :shows, except: :destroy
    end
  end

  namespace :api do
    namespace :v1 do
      resources :favorites
    end
  end

  namespace :api do
    namespace :v1 do
      get '/login', to: 'sessions#new', as: 'login'
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy', as: 'logout'
    end
  end

end
