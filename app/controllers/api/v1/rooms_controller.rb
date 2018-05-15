class Api::V1::RoomsController < Api::V1::BaseController
  before_action :authenticate_user!

  def index
    ::Rooms::Index.(params[:room_type], params).tap do |op|
      render_custom_response(op.errors, op.status) if op.errors.any?

      @rooms = op.result
    end

    authorize! :read, @rooms
  end

  def show
    ::Rooms::Show.(params.delete(:room_type), params).tap do |op|
      render_custom_response(op.errors, op.status) if op.errors.any?

      @room = op.result
    end

    authorize! :read, @room
  end

  def create
    op = ::Rooms::Create.new(params.delete(:room_type), params)

    authorize! :create, op.model_class
    op.call

    return render_custom_response(op.errors, op.status) if op.errors.any?

    render :show, locals: { object: op.result }
  end

  def destroy
    op = ::Rooms::Destroy.new(params[:room_type], params)

    authorize! :destroy, op.model_class, id: params[:id]
    op.call

    render_custom_response(op.errors.presence || op.messages, op.status)
  end

  def update
    op = ::Rooms::Update.new(params.delete(:room_type), params)

    authorize! :update, op.model_class, id: params[:id]
    op.call

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
