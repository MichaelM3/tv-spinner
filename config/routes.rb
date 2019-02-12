Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, except: [:new, :edit, :destroy]
      post '/users/:name', to: 'users#logged_in', as: 'logged_in'
    end
  end

  namespace :api do
    namespace :v1 do
      resources :shows, only: [:index, :show]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :favorites
    end
  end

end
