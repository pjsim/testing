class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :title
      t.text :description
      t.float :stock_quantity
      t.string :quantity_units

      t.timestamps
    end
  end
end
