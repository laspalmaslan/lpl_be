require 'ckeditor/engine'

Lpl::Application.routes.draw do
  match "blog" => "blog#index", as: :blog
  match 'blog/:id/' => "blog#show", :as => :article


  get "calendar/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  mount Ckeditor::Engine => '/ckeditor'

  scope "/admin" do
    resources :posts
    match 'publish_post/:id' => 'posts#publish_post', as: :published_post
    match 'unpublish_post/:id' => 'posts#unpublish_post', as: :unpublished_post
    get "manage_calendar/index"

    get "manage_calendar/new"

    get "manage_calendar/edit"

    post "manage_calendar/update"

    post "manage_calendar/create"

    get "manage_calendar/destroy"
  end
  root to: "blog#index"
end
