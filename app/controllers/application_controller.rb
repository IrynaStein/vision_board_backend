class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_reponse

  # rescue_from ActiveRecord::RecordNotFound, with: :render_record_notfound_reponse

  private

  def render_unprocessable_entity_reponse(invalid)
    render json: { errors: [invalid.record.errors.full_messages] }, status: :unprocessable_entity
  end

  # def render_record_notfound_reponse(invalid)
  #   render json: { errors: [invalid.record.errors.full_messages] }, status: :unprocessable_entity
  # end

  def authorize
    render json: { errors: ['Please login to continue!'] }, status: :unauthorized unless session.include?(:user_id)
  end
end
