# frozen_string_literal = true

class OperationPolicy
  ALL = 'all'

  attr_reader :model, :model_names

  def initialize(model, model_names = [])
    @model       = model
    @model_names = model_names
  end

  def valid_model?
    model.underscore.in?(model_names)
  end

  def all_model?
    model == ALL
  end
end
