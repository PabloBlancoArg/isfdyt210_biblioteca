class ApplicationController < ActionController::Base

    protect_from_forgery

    #Redirects to login for secure resources
    rescue_from CanCan::AccessDenied do |exception|

      if user_signed_in?
        flash[:error] = "Not authorized to view this page"
        session[:user_return_to] = nil
        redirect_to root_url

      else              
        flash[:error] = "You must first login to view this page"
        session[:user_return_to] = request.url
        redirect_to "/users/sign_in"
      end 

    end 
end
