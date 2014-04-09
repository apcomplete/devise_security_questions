# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :question, class: DeviseSecurityQuestions::Question do
    sequence(:title) { |n| "Security question #{n}?" }
  end
end
