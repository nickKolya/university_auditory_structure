class Api::V1::CategoriesController < Api::V1::BaseController
  def index
    authorize! :read, Category

    respond_to do |format|
      format.json { render json: CategoryResponse.call.to_json, status: 200 }
      format.xml  { render xml: CategoryResponse.call.to_xml, status: 200 }
    end
  end
end
