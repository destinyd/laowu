class ResumeExperience < ActiveRecord::Base
  attr_accessible :experience_id, :resume_id
  belongs_to  :resume
  belongs_to  :experience
end
