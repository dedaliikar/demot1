class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|
  	flash[:error] = "Access denied."
  	redirect_to root_url
  end
  
  before_filter :load_categories
  

  def load_categories
  	@categories=Category.all
  end

end