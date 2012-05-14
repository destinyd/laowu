class Experience < ActiveRecord::Base
  attr_accessible :finished_at, :position_id, :salary, :started_at#:company_id, 
  belongs_to  :user
  belongs_to  :company
  belongs_to  :position
  has_many :resume_experiences
  has_many :experiences, :through => :resume_experiences

  validates :salary, :presence => true
  validates :started_at, :presence => true
end
