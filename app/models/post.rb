class Post < ActiveRecord::Base
  attr_accessible :content, :intro, :title, :publish, :unpublish

  def publish
    self.update_attribute(:published_at, Time.now)
  end

  def unpublish
    self.update_attribute(:published_at, nil)
  end
end
