class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :phone
      t.string :gender
      t.string :birthday
      t.boolean :new_client
      t.string :note

      t.timestamps
    end
  end
end
