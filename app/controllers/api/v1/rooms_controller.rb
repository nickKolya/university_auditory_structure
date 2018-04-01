class Api::V1::RoomsController < Api::V1::BaseController
  def index
    ::Rooms::Index.(params[:room_type]).tap do |op|
      render_custom_response(op.errors) if op.errors.any?

      @rooms = op.result
    end
  end

  def show
    ::Rooms::Show.(params.delete(:room_type), params).tap do |op|
      render_custom_response(op.errors, op.status) if op.errors.any?

      @room = op.result
    end
  end

  def create
    op = ::Rooms::Create.(params.delete(:room_type), params)

    return render_custom_response(op.errors, op.status)  if op.errors.any?

    render :show, locals: { object: op.result }
  end

  def destroy
    op = ::Rooms::Destroy.(params[:room_type], params)

    render_custom_response(op.errors.presence || op.messages, op.status)
  end

  def update
    op = ::Rooms::Update.(params.delete(:room_type), params)

    return render_custom_response(op.errors, op.status)  if op.errors.any?

    render :show, locals: { object: op.result }
  end

  private

  def render_custom_response(message, status)
    respond_to do |format|
      format.json { render json: { message: message }, status: status }
      format.xml  { render xml: { message: message }, status: status }
    end
  end
end
