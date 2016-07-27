class CreateInterviewSlots < ActiveRecord::Migration
  def change
    create_table :interview_slots do |t|
      t.string :jobType
      t.string :nineAM
      t.string :nine30AM
      t.string :tenAM
      t.string :ten30AM
      t.string :elevenAM
      t.string :eleven30AM
      t.string :NOON
      t.string :twelve30PM
      t.string :onePM

      t.timestamps null: false
    end
  end
end
