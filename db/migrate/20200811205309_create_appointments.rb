class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.string :address
      t.string :time
      t.integer :user_id
      t.integer :treatment_id

      t.timestamps
    end
  end
end
