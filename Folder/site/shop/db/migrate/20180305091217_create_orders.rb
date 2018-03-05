class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders, {:id => false} do |t|
      t.integer :id
      t.string :description
      t.text :video

      t.timestamps
    
    end
  end
end
