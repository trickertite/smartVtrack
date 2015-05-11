class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token

  def gps2m(lat_a, long_a, lat_b, long_b)
  	pk = 180/3.14169

  	a1 = lat_a / pk
	a2 = lng_a / pk
	b1 = lat_b / pk
	b2 = lng_b / pk

  end

end
