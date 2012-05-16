class ResumesController < InheritedResources::Base
  before_filter :authenticate_user!,:only =>[:new,:create,:update,:edit,:destroy]
  def create
     @resume = current_user.resumes.new(params[:resume])
     create!
  end
  def destroy
     @resume = current_user.resumes.find(params[:id])
     destroy!
  end
  def collection
    @resumes ||= end_of_association_chain.paginate(:page => params[:page])
  end
end
