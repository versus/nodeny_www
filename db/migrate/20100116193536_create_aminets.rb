class CreateAminets < ActiveRecord::Migration
  def self.up
    create_table :aminets do |t|
      t.string :remote_ip
      t.timestamps
    end
  end

  def self.down
    drop_table :aminets
  end
end
