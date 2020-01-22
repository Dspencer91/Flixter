Rails.application.routes.draw do
  devise_for :users
  resource :dashboard, only: [:show]
  root 'static_pages#index'
  get 'privacy', to: 'static_pages#privacy'
  get 'careers', to: 'static_pages#careers'
  get 'about', to: 'static_pages#about'
  get 'team', to: 'static_pages#team'
  get 'contact', to: 'static_pages#contact'
  resources :courses, only: [:index, :show] do
    resources :enrollments, only: :create
  end

  resources :lessons, only: [:show]
  namespace :instructor do
    resources :lessons, only: [:update]
    resources :sections, only: [:update] do
      resources :lessons, only: [:new, :create]
    end

    resources :courses, only: [:new, :create, :show] do
      resources :sections, only: [:update]
      resources :sections, only: [:create]
    end
  end
end
