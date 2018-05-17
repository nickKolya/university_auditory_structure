class Api::V1::BaseController < ::ApplicationController
  append_view_path File.expand_path("#{Rails.root}/app/views/api/v1")

  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private

  def record_not_found
    respond_to do |format|
      format.json { render json: { message: 'Record not found' }, status: 404 }
      format.xml { render xml: { message: 'Record not found' }, status: 404 }
    end
  end

  def render_custom_response(message, status)
    respond_to do |format|
      format.json { render json: { message: message }, status: status }
      format.xml  { render xml: { message: message }, status: status }
    end
  end
end
