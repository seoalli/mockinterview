class CreateInterviews < ActiveRecord::Migration
  def change
    creater_table :interviews do |t|
      t.string :name
      t.string :lastName
      t.string :email
      t.string :phoneNumber
      t.string :interviewTime
      t.string :interviewField
      t.text :message

      t.timestamps null: false
    end
  end
end
