class Job < ActiveRecord::Base
  attr_accessible :finished_at, :name, :position_id, :salary_max, :salary_min, :desc

  belongs_to :company
  belongs_to :position
  has_many  :applyings

  validates :finished_at, :presence => true
  validates :name, :presence => true
  validates :salary_min, :presence => true
  validates :salary_max, :presence => true

  def applyinged? user
    applyings.find_by_user_id user.id
  end
end
