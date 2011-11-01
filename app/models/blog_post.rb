class BlogPost < ActiveRecord::Base
  before_save :erase_link!
  before_update :erase_link!

  validates :body, :presence => true

  def erase_link!
    self.media=self.media.gsub(/<a.*><img/i, "<img").gsub('</a>', '')
  end
end
