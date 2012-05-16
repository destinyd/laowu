class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable#, :validatable#,
         #:invitable

  # include DeviseInvitable::Inviter
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:name

  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false

  has_many  :experiences
  has_many  :resumes
  has_many  :auditions
  has_many  :applyings
  has_many  :offers
end
