Rails.application.routes.draw do
  # resources :pages
  # root :to => 'pages#index'
  resources :pages do
    member do
        post :changer
    end
  end
end
