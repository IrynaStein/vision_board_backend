class ApplicationController < ActionController::API
  include ActionController::Cookies

  private

  def authorize
    render json: { errors: ['Please login to continue!'] }, status: :unauthorized unless session.include?(:user_id)
  end
end
