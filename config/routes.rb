Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
   registrations: "public/registrations",
   sessions: 'public/sessions'
  }

 devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
 }

 root to: "public/homes#top"

 #管理者
 namespace :admin do
    root to: "homes#top"

    resources :sessions, only: [:new, :create, :destroy]
  end

 #会員
 scope module: :public do
  get "customers/show" => "customers#show", as:"customers_my_page"
  get 'customers/information/edit' => 'customers#edit', as: 'edit_customer'
  patch 'customers/information' => 'customers#update', as: 'update_customer'
  get "customers/unsubscribe" => "customers#unsubscribe", as:"unsubscribe"
  patch "customers/withdraw" => "customers#withdraw", as:"withdraw"
  
  resources :animes

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end







