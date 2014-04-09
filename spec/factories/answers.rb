# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :answer, class: DeviseSecurityQuestions::Answer do
    body { Faker::Lorem.word }
    question
    association :questionable, factory: :user
  end
end
