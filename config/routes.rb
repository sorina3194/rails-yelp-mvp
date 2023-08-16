Rails.application.routes.draw do
  resources :restaurants do
    collection do
      get :top
    end

    member do
      patch :upvote
    end

    resources :reviews, only: [:create]
  end

  resources :reviews, only: [:destroy]
end
