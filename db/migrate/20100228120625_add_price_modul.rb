class AddPriceModul < ActiveRecord::Migration
  def self.up
    add_column :prices, :author, :string
    add_column :prices, :note, :text
    add_column :prices, :contact, :string
    add_column :prices, :accept, :boolean, :default => false
    add_column :prices, :price, :decimal,  :precision => 8, :scale => 2
    add_column :prices, :razdel, :int, :default => 0
  end

  def self.down
    remove_column :prices, :author
    remove_column :prices, :note
    remove_column :prices, :contact
    remove_column :prices, :price
    remove_column :prices, :accept
    remove_column :prices, :razdel
  end
end
