Rails.application.routes.draw do
devise_for :users
root to: "homes#top"

get 'homes/about' => 'homes#about', as: :about

resources :post_images, only: [:new, :index, :show]#create,destroyを14章で消した
resources :users, only: [:show, :edit]

end
