class CreateUserPets < ActiveRecord::Migration[6.1]
  def change
    create_table :user_pets do |t|
      t.integer :user_id
      t.integer :pet_id

      t.timestamps
    end
  end
end
