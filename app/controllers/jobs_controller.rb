class JobsController < InheritedResources::Base
  before_filter :authenticate_company!,:only =>[:new,:create,:update,:edit,:destroy]
  def create
     @job = current_user.jobs.new(params[:job])
     create!
  end
  def collection
    @jobs ||= end_of_association_chain.paginate(:page => params[:page])
  end
end
