class CreateDoctors < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors do |t|
      t.string :name
      t.bigint :phone
      t.string :credentials
      t.string :speciality
      t.string :bio


      t.timestamps
    end
  end
end
