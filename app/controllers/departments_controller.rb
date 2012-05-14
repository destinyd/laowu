class DepartmentsController < InheritedResources::Base
  before_filter :authenticate_company!,:only =>[:new,:create,:update,:edit,:destroy]
  def create
     @department = current_company.departments.new(params[:department])
     create!
  end
  def collection
    @departments ||= end_of_association_chain.paginate(:page => params[:page])
  end
end
