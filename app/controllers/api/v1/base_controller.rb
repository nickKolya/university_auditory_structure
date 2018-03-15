class Api::V1::BaseController < ::ActionController::Base
  append_view_path File.expand_path("#{Rails.root}/app/views/api/v1")
end
