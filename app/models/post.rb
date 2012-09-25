class Post < ActiveRecord::Base
  attr_accessible :content, :intro, :title, :publish, :unpublish

  def publish
    slef.update_attribute(:published_at, Time.now)
  end

  def unpublish
    slef.update_attribute(:published_at, nil)
  end
end
