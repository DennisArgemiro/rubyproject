Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    resources :comments, only: [:create] do
      member do
        get 'delete_comment', to: 'comments#delete_comment'
      end
    end
  end

  root "posts#index"
end
