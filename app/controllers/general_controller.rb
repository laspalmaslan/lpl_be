class GeneralController < ApplicationController
  def rules
  end

  def dashboard
    @news = Post.where("published_at IS NOT NULL").order("published_at DESC").limit(2)
    @tournaments = Tournament.order("updated_at DESC").limit(3)
  end
end
