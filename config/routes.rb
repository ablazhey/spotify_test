Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "artist#search"

  post 'mark_favourite' => 'artist#mark_favourite'
end
