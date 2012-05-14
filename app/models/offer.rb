class Offer < ActiveRecord::Base
  attr_accessible :company_id, :finished_at, :position_id, :salary, :status_id, :user_id
  belongs_to :company
  belongs_to :position
  belongs_to :user
end
