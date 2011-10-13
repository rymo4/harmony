class Image < ActiveRecord::Base
  before_save :erase_link!
  before_update :erase_link!
  
  validates :hotlink, :presence => true
  
  def erase_link!
    self.hotlink=self.hotlink.gsub(/<a.*><img/i, "<img").gsub('</a>', '')
  end
  def small
    self.hotlink.gsub(".jpg", "_m.jpg").gsub(/width=".*" height=".*" /i, "")
  end
  
  def location
    self.hotlink.gsub(/<img src="/i, "").gsub(/.jpg" .+/i, ".jpg")
  end
  
end
