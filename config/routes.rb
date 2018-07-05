  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  Rails.application.routes.draw do
  resources :contents do
    resources :translations, except: [:index, :show]
  end

  root "contents#index"
end
