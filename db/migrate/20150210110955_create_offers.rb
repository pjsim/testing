class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :haggle, index: true, null: false
      t.integer :intention, default: 1, null: false
      t.decimal :price
      t.float :quantity
      t.boolean :meet_you
      t.boolean :meet_me
      t.boolean :meet_half
      t.boolean :ship_you

      t.timestamps
    end
  end
end
