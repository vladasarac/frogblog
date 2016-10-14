Rails.application.routes.draw do
  
  devise_for :authors
  root to: 'blog/posts#index' # ovo znaci da kad smo na localhost:3000 idemo na localhost:3000/posts tj na index meto posts_controllera
  
  namespace :authors do
  	resources :posts
  end

  scope module: 'blog' do
  	get 'about' => 'pages#about', as: :about
    get 'contact' => 'pages#contact', as: :contact
    get 'posts' => 'posts#index', as: :posts
    get 'posts/:id' => 'posts#show', as: :post
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
