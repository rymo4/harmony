class StaticsController < ApplicationController
  def home
    @page=Page.find_by_permalink("home")
  end

end
