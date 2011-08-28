class Page < ActiveRecord::Base
  before_save :format
  before_update :format
  
  def format
    self.content= self.content.gsub(/<a href="(\w||\W)*">(\s||"")<img/i, '</P><center><img').gsub("</a>", "</center><p>").html_safe.to_s
  end
  
  #def to_param
  #  "#{self.permalink}"
  #end
  
end