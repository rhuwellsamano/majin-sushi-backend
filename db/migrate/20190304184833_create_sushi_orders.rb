class CreateSushiOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :sushi_orders do |t|
      t.integer :user_id
      t.integer :sushi_id

      t.timestamps
    end
  end
end
