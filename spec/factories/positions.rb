# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :position do
    name "MyString"
    company_id 1
    department_id 1
  end
end
