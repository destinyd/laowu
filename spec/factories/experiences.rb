# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :experience do
    salary ""
    started_at "2012-05-14 10:47:22"
    finished_at "2012-05-14 10:47:22"
    user_id 1
    company_id 1
    position_id 1
  end
end
