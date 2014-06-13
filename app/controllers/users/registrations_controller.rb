class Users::RegistrationsController < Devise::RegistrationsController
  # before_filter :authenticate_admin! (Not working)
  def new
    render :text=>'Forbidden Action'  
  end

  def create
    super
  end
end