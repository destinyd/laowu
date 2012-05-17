class ApplyingsController < InheritedResources::Base
  before_filter :authenticate_user!
  def create
    @applying = current_user.applyings.new params[:applying]
    @applying.job_id = params[:job_id]
    create!
  end
  def begin_of_association_chain
    current_user
  end
  def collection
    @applyings ||= end_of_association_chain.paginate(:page => params[:page])
  end
end
