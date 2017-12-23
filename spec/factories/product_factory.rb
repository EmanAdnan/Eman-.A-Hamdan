FactoryBot.define do


  factory :product do
     name "shoes"
     description "nice"
    price "20.0"
    colour "violat"
    image_url "123.jpg"

  end

  factory :comment do
    rating "5"
    body "Woow!"
  end

end