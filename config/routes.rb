  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :chat, only: [:show]
      resources :senders, only: [:index, :update, :create, :new, :show, :edit]
      resources :receivers, only: [:index, :update, :create, :new, :show, :edit]
      resources :messages, only: [:index, :update, :create, :new, :show, :edit, :destroy]
      resources :conversations
      mount ActionCable.server, at: '/cable'
    end
  end
end
