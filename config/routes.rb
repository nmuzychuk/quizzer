Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

  get '/dashboard', to: 'dashboard#index'

  resources :quizzes do
    resources :questions do
      resources :answers
    end
  end

  get '/admin', to: 'admin#index'

  resources :play, only: :show
end
