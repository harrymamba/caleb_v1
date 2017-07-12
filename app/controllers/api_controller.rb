class ApiController < ActionController::API

  before_action :authenticate_request

  class NotAuthenticatedError < StandardError; end
  rescue_from NotAuthenticatedError do
    render json: { error: 'Not Authorized' }, status: :unauthorized
  end

  class ExpiredSessionError < StandardError; end
  rescue_from ExpiredSessionError do
    render json: { error: 'Your session has expired' }, status: :unauthorized # unofficial expired session
  end

  def current_user
    @current_user ||= AdminUser.find_by(auth_token: auth_token)
  end

  def auth_token
    @access_token ||=  request.headers['AuthToken']
  end

  def authenticate_request
    fail ExpiredSessionError if current_user.nil?
  end

end
