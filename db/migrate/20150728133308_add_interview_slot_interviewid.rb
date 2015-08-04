class AddInterviewSlotInterviewid < ActiveRecord::Migration
  def change
    add_column :interview_slots, :interview_id, :integer
  end
end
