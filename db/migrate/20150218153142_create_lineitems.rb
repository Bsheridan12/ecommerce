class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.references :order
      t.references :product

      t.timestamps
    end
  end
end
