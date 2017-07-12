class SessionsController <  ApiController

  skip_before_action :authenticate_request, only: %w(create)

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.valid_password?(params[:password])
      sign_in :user, @user
      render json: @user.to_json, root: nil
    else
      invalid_login_attempt
    end
  end

  def invalid_login_attempt
    warden.custom_failure!
    render :json=> {:success=>false, :message=>"Error with your login or password"}, :status=>401
  end

end
