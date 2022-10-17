Rails.application.routes.draw do
  get 'detail/show'
  get 'boards/index'
  get 'boards/show'
  get 'boards/detail'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'boards#index'
  resources :boards, only: %i[index show] do
    resources :details, only: %i[show], shallow: true
  end
end
