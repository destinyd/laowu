class Position < ActiveRecord::Base
  attr_accessible :department_id, :name
  validates :name, :presence => true

  belongs_to :department
  belongs_to :company
  has_many  :experiences
  has_many  :auditions
  has_many  :offers

  def to_s
    name
  end
end
