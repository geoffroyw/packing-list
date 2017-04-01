Rails.application.routes.draw do
  resources :items do
    resources :documents, controller: 'item_documents'
  end
  resources :packages
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
