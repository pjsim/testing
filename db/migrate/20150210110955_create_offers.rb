class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :haggle, index: true
      t.integer :type
      t.decimal :price
      t.float :quantity
      t.boolean :meet_you
      t.boolean :meet_me
      t.boolean :meet_half
      t.boolean :ship_you
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
