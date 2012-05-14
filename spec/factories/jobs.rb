# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    name "MyString"
    salary_min ""
    salary_max ""
    finished_at "2012-05-14 10:06:18"
    company_id 1
    position_id 1
  end
end
