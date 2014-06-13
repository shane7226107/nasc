class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :default_locale
  before_filter :nav_bar

  def default_locale
  	unless session[:locale]
  		session[:locale] = I18n.default_locale
  		I18n.locale = I18n.default_locale
  	end
  end

  def nav_bar
    @boards = Board.all 
  end
end
