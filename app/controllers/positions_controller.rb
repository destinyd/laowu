class PositionsController < InheritedResources::Base
  before_filter :authenticate_company!,:only =>[:new,:create,:update,:edit,:destroy]
  belongs_to :department, :optional => true
  def begin_of_association_chain
    current_company if ['new','create','update','edit','destroy'].include?(action_name)
  end
  def collection
    @positions ||= end_of_association_chain.paginate(:page => params[:page])
  end
end
