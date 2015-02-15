class CreateHaggles < ActiveRecord::Migration
  def change
    create_table :haggles do |t|
      t.references :commodity, index: true, null: false
      t.boolean :open, default: true, null: false
      t.integer :seller, null: false
      t.integer :buyer, null: false

      t.timestamps
    end
  end
end
