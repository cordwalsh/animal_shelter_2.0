class AddPetsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.column :type_of_animal, :string
      t.column :name, :string
      t.column :age, :integer
      t.column :gender, :string
    end
  end
end
