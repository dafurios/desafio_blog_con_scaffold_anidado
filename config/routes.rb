Rails.application.routes.draw do
  resources :posts do
    resources :comments, only: [:create, :destroy, :update, :edit]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'
end
