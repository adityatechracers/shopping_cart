class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|

         t.boolean    :successful
         t.float      :amount
         t.references :order
         t.references :user

      t.timestamps null: false
    end
  end
end
