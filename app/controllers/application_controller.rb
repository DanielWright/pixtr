class ApplicationController < ActionController::Base
  include Clearance::Authentication
  protect_from_forgery
  
  def authorize
    deny_access "You must be signed in." unless signed_in?
  end
end
