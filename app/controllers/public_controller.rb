class PublicController < ApplicationController
	def index
	end

	def missions
	end

	def photos
	end
	
	def set_locale
    if params[:locale] && I18n.available_locales.include?( params[:locale].to_sym )
      I18n.locale = params[:locale] || I18n.default_locale
      session[:locale] = I18n.locale      
    end

    # There are posts on stackoverflow says 'request.referer' sometimes retuens nil, so use :back instead
    # redirect_to request.referer
    begin
      redirect_to :back
    rescue ActionController::RedirectBackError
      redirect_to root_path
    end
  end
end
