class RemoveColumns < ActiveRecord::Migration[5.1]
  def change
  end

  def self.up
    remove_column :bookings, :starts_at, :ends_at, :total
  end

  def self.down
    add_column :bookings, :guests
  end
end
