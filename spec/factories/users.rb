# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user, aliases: [:author] do
    sequence(:email) { |n| "user.#{n}@example.com" }
    password "password"
    password_confirmation { password }

    after(:create) do |user, evaluator|
      FactoryGirl.create_list :answer, 5, questionable: user
    end
  end
end
