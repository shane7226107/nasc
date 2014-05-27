class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :default_locale

  def default_locale
  	unless session[:locale]
  		session[:locale] = I18n.default_locale
  		I18n.locale = I18n.default_locale
  	end
  end
end
