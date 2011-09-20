FactoryGirl.define do
  sequence :gallery_title do |n|
    "Test Gallery ##{n}"
  end

  factory :gallery do
    user
    title { Factory.next :gallery_title }
  end

  sequence :user_email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    email { Factory.next :user_email }
    password { "password" }
  end
end
