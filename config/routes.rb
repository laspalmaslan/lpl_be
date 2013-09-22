require 'ckeditor/engine'

Lpl::Application.routes.draw do



  devise_for :admins

  match "blog" => "blog#index", as: :blog
  match 'blog/:id/' => "blog#show", :as => :article
  match "competiciones" => "competitions#index", as: :competitions
  match "competiciones/:id" => "competitions#show", as: :competition
  # user enrollments
  match "inscripciones" => "users_enrollments#index", as: :u_enrollment
  match "inscripciones/new" => "users_enrollments#new", as: :u_enrollment_new
  match "inscripciones/create" => "users_enrollments#create", as: :u_enrollment_create, via: :post
  match "inscripciones/game_new" => "users_enrollments#new_game", as: :u_game_enrollment_new
  match "inscripciones/game_create" => "users_enrollments#create_game", as: :u_game_enrollment_create, via: :post

  match "normativa" => "general#rules", as: :rules
  match "calendar" => "calendar#index", as: :calendar

  # The priority is based upon order of creation:
  # first created -> highest priority.

  mount Ckeditor::Engine => '/ckeditor'

  scope "/admin" do
    resources :tournaments
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
    # manage admin activations
    match "manage_admins" => 'manage_admins#activations', as: :admins_list
    match "manage_admins/activate/:id" => 'manage_admins#activate', as: :activate_admin
    match "manage_admins/deactivate/:id" => 'manage_admins#deactivate', as: :deactivate_admin

    # enrollments
    resources :enrollments
    match 'enrollment_paid/:id' => 'enrollments#paid', as: :enrollment_paid
    match 'enrollment_show_paid/show_paid' => 'enrollments#show_paid', as: :show_enrollment_paid
    match 'enrollment_unpaid/:id' => 'enrollments#unpaid', as: :enrollment_unpaid
    match "game_enrollments/new" => "game_enrollments#new", as: :g_enrollment_new
    match "game_enrollments/:id/edit" => "game_enrollments#edit", as: :g_enrollment_edit
    match "game_enrollments/:id/upate" => "game_enrollments#update", as: :g_enrollment_update, via: :put
    match "game_enrollments/create" => "game_enrollments#create", as: :g_enrollment_create, via: :post
  end
  root to: "general#dashboard"
end
