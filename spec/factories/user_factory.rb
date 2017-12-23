FactoryBot.define do

  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email 
    password "123456"
    first_name "shima"
    last_name "Adnan"
    admin false
  end

  factory :admin, class: User do
    email 
    password "123456"
    admin true
    first_name "Eman"
    last_name "Adnan"
  end

end