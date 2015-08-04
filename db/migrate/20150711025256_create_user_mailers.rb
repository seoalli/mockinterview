class CreateUserMailers < ActiveRecord::Migration
  def change
    create_table :user_mailers do |t|
      t.string :ActionMailer

      t.timestamps null: false
    end
  end
end
