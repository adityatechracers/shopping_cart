class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|

    	     t.integer    :quantity
             t.integer    :product_id
             t.references :product
             t.references :order

      t.timestamps null: false
    end
  end
end
