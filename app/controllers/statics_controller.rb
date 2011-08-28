class StaticsController < ApplicationController
  def home
    @page=Page.find_by_permalink("home")
    @title="About Us"
  end

end
