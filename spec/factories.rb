FactoryBot.define do

  factory :pet do
    type_of_animal { Faker::Creature::Animal.name }
    name  { Faker::Creature::Dog.name }
    age  { rand(1..15) }
    gender  { Faker::Creature::Dog.gender }
  end

  # after(:create) do |pets|
  #    create_list(:type_of_animal => type_of_animal, :name => name, :age => age, :gender => gender)
  # end

end
