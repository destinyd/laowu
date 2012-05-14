class Audition < ActiveRecord::Base
  attr_accessible :at, :company_id, :position_id, :remark, :reply, :status_id, :user_id
  belongs_to :company
  belongs_to :position
  belongs_to :user
end
