Rails.application.routes.draw do
  get 'home/index'
  get 'home/contact_us'
  get 'home/write_to_us'
  post 'home/register_customer_query'
  get 'home/show_query'

  devise_for :users

  authenticated :user do
    root to: "home#index", as: "authenticated_root"
  end

  root "home#welcome"

end
