class AddMessageToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :message, :text
  end
end
