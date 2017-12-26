class ChangeDataTypeForTotal < ActiveRecord::Migration[5.1]
  def self.up
    change_table :orders do |t|
      t.change :total, :decimal
    end
  end
  def self.down
    change_table :orders do |t|
      t.change :total, :foalt
    end
  end
end
