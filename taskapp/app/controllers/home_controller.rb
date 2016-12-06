class HomeController < ProtectedController
  before_action :require_login

  def index
    @user = User.find(session[:user_id])  
  end
end
