class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.string :network_name
      t.text :fio
      t.string :email
      t.integer :count_user
      t.string :city
      t.string :permalink
      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
