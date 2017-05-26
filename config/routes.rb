Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"
  root "cocktails#index"
  resources :doses, only: [:destroy]
  resources :cocktails, only: [:new, :create, :index, :show, :destroy, :update] do
    resources :doses, only: [:new, :create]
  end
end

