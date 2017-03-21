class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.integer :ext
      t.integer :room_no
      t.integer :type

      t.timestamps
    end
  end
end
