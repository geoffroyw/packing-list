Rails.application.routes.draw do
  resources :items do
    resources :documents, controller: 'item_documents'
  end
  resources :packages do
    resources :items, controller: 'package_items'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
