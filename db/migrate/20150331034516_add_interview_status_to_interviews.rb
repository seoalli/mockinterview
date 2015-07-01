class AddInterviewStatusToInterviews < ActiveRecord::Migration
  def change
    add_column :interviews, :interviewStatus, :string
  end
end
