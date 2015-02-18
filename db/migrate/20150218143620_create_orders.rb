class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :purchaser

      t.timestamps
    end
  end
end
