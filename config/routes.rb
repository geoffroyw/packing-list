Rails.application.routes.draw do
  resources :items do
    collection do
      get :unpacked
    end
    resources :documents, controller: 'item_documents'
  end
  resources :packages do
    resources :items, controller: 'package_items'
  end

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
