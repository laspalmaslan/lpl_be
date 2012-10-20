require 'ckeditor/engine'

Lpl::Application.routes.draw do
  match "blog" => "blog#index", as: :blog
  match 'blog/:id/' => "blog#show", :as => :article
  root to: "blog#index"


  match "calendar" => "calendar#index", as: :calendar

  # The priority is based upon order of creation:
  # first created -> highest priority.

  mount Ckeditor::Engine => '/ckeditor'

  scope "/admin" do
    resources :posts
    match 'publish_post/:id' => 'posts#publish_post', as: :published_post
    match 'unpublish_post/:id' => 'posts#unpublish_post', as: :unpublished_post
    # manage calendar routes
    match 'manage_calendar' => 'manage_calendar#index', as: :manage_calendars
    match 'manage_calendar/new' => "manage_calendar#new", as: :new_manage_calendar
    match "manage_calendar/:id/edit" => 'manage_calendar#edit', as: :edit_manage_calendar
    match "manage_calendar/:id/update" => 'manage_calendar#update', via: :put, as: :update_manage_calendar
    match "manage_calendar/create" => 'manage_calendar#create', via: :post, as: :create_manage_calendar
    match "manage_calendar/:id/destroy" => 'manage_calendar#destroy', via: :delete, as: :destroy_manage_calendar
  end
end
