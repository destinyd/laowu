class Experience < ActiveRecord::Base
  attr_accessible :finished_at, :position_id, :salary, :started_at#:company_id, 
  belongs_to  :user
  belongs_to  :company
  belongs_to  :position

  validates :salary, :presence => true
  validates :started_at, :presence => true
end
