Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :books, only: [:index, :create, :destroy, :update] do
        resources :comments, only: [:create, :destroy, :update]
      end
    end
  end

end
