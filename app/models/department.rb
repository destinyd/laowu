class Department < ActiveRecord::Base
  attr_accessible :name
  has_many :positions

  validates :name, :presence => true

  def to_s
    name
  end
end
