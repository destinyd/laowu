# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :offer do
    company_id 1
    position_id 1
    user_id 1
    status_id 1
    salary "9.99"
    finished_at "2012-05-14 19:06:18"
  end
end
