class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price

      t.references :category

      t.timestamps
    end
  end
end
