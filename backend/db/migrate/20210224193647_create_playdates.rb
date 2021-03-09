class CreatePlaydates < ActiveRecord::Migration[6.1]
  def change
    create_table :playdates do |t|
      t.integer :user_id
      t.integer :pet_id
      t.integer :date
      t.integer :time
      t.string :location

      t.timestamps
    end
  end
end
