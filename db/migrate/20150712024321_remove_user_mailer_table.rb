class RemoveUserMailerTable < ActiveRecord::Migration
  def self.up
    drop_table :user_mailers
  end
end
