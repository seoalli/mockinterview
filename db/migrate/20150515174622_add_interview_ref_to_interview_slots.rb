class AddInterviewRefToInterviewSlots < ActiveRecord::Migration
  def change
    add_reference :interview_slots, :interview, index: true
    add_foreign_key :interview_slots, :interviews
  end
end
