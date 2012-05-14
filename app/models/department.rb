class Department < ActiveRecord::Base
  attr_accessible :name
  has_many :departments

  validates :name, :presence => true
end
