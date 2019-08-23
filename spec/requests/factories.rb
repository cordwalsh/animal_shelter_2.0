FactoryBot.define do
  factory :pets do
    type_of_animal { Faker::Creature::Animal.name }
    name { Faker::Creature::Dog.name }
    age { rand(1..15) }
    gender { Faker::Creature::Dog.gender }
  end
end
