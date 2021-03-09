class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :doctor_id
      t.integer :user_pet_id
      t.integer :date
      t.integer :time

      t.timestamps
    end
  end
end
