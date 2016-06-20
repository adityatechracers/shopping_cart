class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
    	
    	 t.datetime   :datetime
         t.boolean    :is_delivered
         t.references :user

      t.timestamps null: false
    end
  end
end
