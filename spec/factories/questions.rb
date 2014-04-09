# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question, class: DeviseSecurityQuestions::Question do
    title { Faker::Lorem.sentence + '?' }
  end
end
