class Resume < ActiveRecord::Base
  attr_accessible :is_public, :name, :user_id, :is_conceal, :is_newest
  belongs_to :user
  has_many :resume_experiences
  has_many :experiences, :through => :resume_experiences
  has_many :applyings
end
