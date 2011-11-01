class Event < ActiveRecord::Base
  before_save :erase_link!
  before_update :erase_link!
  
  validates :body, :presence => true
  
  def erase_link!
    self.body=self.body.gsub(/<a.*><img/i, "<img").gsub('</a>', '')
  end
end
