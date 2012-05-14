class Applying < ActiveRecord::Base
  attr_accessible :job_id, :resume_id, :user_id, :view_at
  belongs_to :job
  belongs_to :resume
  belongs_to :user
end
