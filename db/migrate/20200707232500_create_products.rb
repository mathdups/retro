class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :description
      t.string :photo
      t.decimal :price, null: false, precision: 6, scale: 2

      t.timestamps

      t.index :title, unique: true
    end
  end
end
