FactoryBot.define do
  factory :pet do
    type_of_animal { Faker::Creature::Animal.name }
    name { Faker::Creature::Dog.name }
    age { create(:age) }
    gender { Faker::Creature::Dog.gender }
  end
end
