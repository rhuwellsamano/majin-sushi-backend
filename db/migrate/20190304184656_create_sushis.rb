class CreateSushis < ActiveRecord::Migration[5.2]
  def change
    create_table :sushis do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.integer :price
      t.string :customize

      t.timestamps
    end
  end
end
