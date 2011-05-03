class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :verification,:except=>[:login_page,:login]
  def verification
    if session[:user].nil?
      redirect_to login_page_employees_path
    end
  end
  
  def login_page

  end
  
  def login
    
  end
end
