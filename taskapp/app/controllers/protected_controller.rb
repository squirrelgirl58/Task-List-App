class ProtectedController < ApplicationController


  def require_login
    unless session["user_id"]
      flash[:message] = "You are not logged in."
      redirect_to login_path
    end
  end
end
