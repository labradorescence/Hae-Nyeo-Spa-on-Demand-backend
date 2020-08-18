class CreateTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :treatments do |t|
      t.string :title
      t.float :price
      t.integer :duration
      t.string :description
      t.string :image
      t.string :video
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
