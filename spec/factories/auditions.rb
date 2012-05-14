# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :audition do
    at "2012-05-14 17:52:35"
    user_id 1
    company_id 1
    position_id 1
    remark "MyText"
    reply "MyText"
    status_id 1
  end
end
