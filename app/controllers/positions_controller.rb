class PositionsController < InheritedResources::Base
  before_filter :authenticate_company!,:only =>[:new,:create,:update,:edit,:destroy]
  def create
     @position = current_company.positions.new(params[:position])
     create!
  end
  def collection
    @positions ||= end_of_association_chain.paginate(:page => params[:page])
  end
end
