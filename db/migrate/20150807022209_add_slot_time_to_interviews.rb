class AddSlotTimeToInterviews < ActiveRecord::Migration
  def change
    add_column :interviews, :slotTimeDescription, :string
  end
end
