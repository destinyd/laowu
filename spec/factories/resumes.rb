# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :resume do
    name "MyString"
    is_public false
    user_id 1
  end
end
