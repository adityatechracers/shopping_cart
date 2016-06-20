class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
    
    	t.integer    :quantity
        t.references :product
        t.references :cart

      t.timestamps null: false
    end
  end
end
