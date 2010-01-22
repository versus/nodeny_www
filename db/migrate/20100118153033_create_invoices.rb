class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.string :network_name
      t.text :fio
      t.string :email
      t.integer :count_user
      t.string :city
      t.string :country
      t.string :permalink
      t.string :phone
      t.decimal :summa
      t.text :comment      
      t.text :rekvizity
      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
