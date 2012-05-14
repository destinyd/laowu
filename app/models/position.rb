class Position < ActiveRecord::Base
  attr_accessible :department_id, :name
  validates :name, :presence => true

  belongs_to :department
  has_many  :experiences

  validates :name, :presence => true
end
