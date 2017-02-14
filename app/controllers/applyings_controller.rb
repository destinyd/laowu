class ApplyingsController < InheritedResources::Base
  before_filter :authenticate!
  def show
    show! do |format|
      @applying.view if request.subdomain == "company"
      format.html
    end
  end
  def create
    @applying = current_user.applyings.new params[:applying]
    @applying.job_id = params[:job_id]
    create! do |success,failure|
      failure.html { redirect_to job_url(params[:job_id]) }
      success.html { redirect_to job_url(params[:job_id]) }
    end
  end
  protected
  def begin_of_association_chain
    current_user if request.subdomain == "self"
    current_company if request.subdomain == "company"
  end

  def collection
    @applyings ||= end_of_association_chain.paginate(:page => params[:page])
  end

  def authenticate!
    request.subdomain == "company" ? authenticate_company! : authenticate_user!
  end
end
