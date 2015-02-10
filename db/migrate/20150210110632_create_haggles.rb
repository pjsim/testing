class CreateHaggles < ActiveRecord::Migration
  def change
    create_table :haggles do |t|
      t.references :commodity, index: true
      t.boolean :open

      t.timestamps
    end
  end
end
