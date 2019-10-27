Rails.application.routes.draw do
  resources :recipes do
    resources :ingredients
    # resources :steps
    # resources :rates
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
