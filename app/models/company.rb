class Company < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :invitable

  include DeviseInvitable::Inviter
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name

  validates :name, presence: true, uniqueness: {case_sensitive: false}, length: 4..20
  # validates :email, presence: true, uniqueness: {case_sensitive: false}, length: 6..20
  # validates_uniqueness_of :name, :email, :case_sensitive => false

  has_many  :experiences
  has_many  :auditions
  has_many  :offers
  has_many  :departments
  has_many  :positions
  has_many  :jobs

  def to_s
    name
  end
end
