Lpl::Application.routes.draw do
  match "blog" => "blog#index", as: :blog
  match 'blog/:id/' => "blog#show", :as => :article

  mount Ckeditor::Engine => '/ckeditor'

  scope "/admin" do
    resources :posts
    match 'publish_post/:id' => 'posts#publish_post', as: :published_post
    match 'unpublish_post/:id' => 'posts#unpublish_post', as: :unpublished_post
  end
  root to: "blog#index"
end
