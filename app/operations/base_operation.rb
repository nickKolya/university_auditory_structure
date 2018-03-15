class BaseOperation
  UNPROCESSABLE_ENTITY = 422

  attr_reader :model, :params
  attr_accessor :status, :messages, :errors, :result

  delegate :valid_model?, :all_model?, to: :operation_policy

  def self.call(*args)
    new(*args).call
  end

  def initialize(model, params = {})
    @model    = model.to_s
    @params   = params
    @errors   = []
    @status   = UNPROCESSABLE_ENTITY
    @messages = []
  end

  def call
    if !valid_model? && !all_model?
      @errors << "Model name is not supported: #{@model}" and return
    end
  end

  def model_class
    return @model_class if defined? @model_class
    return @model_class = room_null_object unless valid_model?

    @model_class = model.underscore.classify.constantize
  end

  private

  def allowed_model_names
    []
  end

  def operation_policy
    @operation_policy ||= OperationPolicy.new(model, allowed_model_names)
  end

  protected

  def room_null_object
    @room_null_object ||= RoomNullObject.new(operation: self, id: params[:id])
  end
end
