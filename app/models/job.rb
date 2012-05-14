class Job < ActiveRecord::Base
  attr_accessible :finished_at, :name, :position_id, :salary_max, :salary_min

  belongs_to :company
  belongs_to :position
  has_many  :applyings

  validates :finished_at, :presence => true
  validates :name, :presence => true
  validates :salary_min, :presence => true
  validates :salary_max, :presence => true
end
