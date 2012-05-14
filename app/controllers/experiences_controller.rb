class ExperiencesController < InheritedResources::Base
  before_filter :authenticate_user!,:only =>[:new,:create,:update,:edit,:destroy]
  def create
     @experience = current_user.experiences.new(params[:experience])
     create!
  end
  def collection
    @experiences ||= end_of_association_chain.paginate(:page => params[:page])
  end
end
