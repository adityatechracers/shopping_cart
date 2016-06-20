class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
    	     t.string  :email
             t.string  :shipping_address
             t.integer :shipping_phone
             t.integer :shipping_alternate_phone
             t.string  :billing_address
             t.integer :billing_phone
             t.integer :billing_alternate_phone
             t.references :user

      t.timestamps null: false
    end
  end
end
