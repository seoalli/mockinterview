class AddInterviewSlotsRefToInterviews < ActiveRecord::Migration
  def change
    add_reference :interviews, :interviewID, index: true
    add_foreign_key :interviews, :interviewIDs
  end
end
