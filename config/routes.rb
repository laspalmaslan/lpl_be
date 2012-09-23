Lpl::Application.routes.draw do
  match "blog" => "blog#index", as: :blog
  match 'blog/:id/' => "blog#show", :as => :article

  mount Ckeditor::Engine => '/ckeditor'

  scope "/admin" do
    resources :posts
  end
  root to: "blog#index"
end
