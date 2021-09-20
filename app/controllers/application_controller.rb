class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_reponse

  private

  def render_unprocessable_entity_reponse(invalid)
    render json: { errors: [invalid.record.errors.full_messages] }, status: :unprocessable_entity
  end

  def authorize
    render json: { errors: ['Please login to continue!'] }, status: :unauthorized unless session.include?(:user_id)
  end
end
