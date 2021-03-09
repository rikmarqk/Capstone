class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :pet_category
      t.string :breed
      t.integer :age
      t.string :sex
      t.string :status
      t.string :cam_link
      t.string :img_url

      t.timestamps
    end
  end
end
