class CreateOrderPrducts < ActiveRecord::Migration[5.0]
  def change
    create_table :order_prducts do |t|
      t.integer :quantity
      t.text :notes
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
