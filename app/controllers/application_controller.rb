class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  
  before_filter :set_timezone

  def set_timezone
    # current_user.time_zone #=> 'London'
    Time.zone = "Eastern Time (US & Canada)"
  end
  
end
