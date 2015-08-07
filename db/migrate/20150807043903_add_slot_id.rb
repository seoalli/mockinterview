class AddSlotId < ActiveRecord::Migration
  def change
    add_column :interviews, :slotID, :integer
  end
end
