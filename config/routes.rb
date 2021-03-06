Rails.application.routes.draw do
  resources :playlists

resources :songs do
  collection do
    get 'listofsong'
  end
end


  resources :moods

  resources :playlists

  resources :raters

  resources :populars

  resources :artists


  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users

end
