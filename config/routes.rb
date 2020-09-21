Rails.application.routes.draw do
  devise_for :users

  root to: "user_infos#index"
  
  resources :user_infos do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member # 追加
    get :followers, on: :member # 追加
  end
end