# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    name 'Test Company'
    email 'example@example.com'
    password 'please'
    password_confirmation 'please'
    # required if the Devise Confirmable module is used
    confirmed_at Time.now
  end
end
