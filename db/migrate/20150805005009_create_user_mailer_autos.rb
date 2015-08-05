class CreateUserMailerAutos < ActiveRecord::Migration
  def change
    create_table :user_mailer_autos do |t|

      t.timestamps null: false
    end
  end
end
