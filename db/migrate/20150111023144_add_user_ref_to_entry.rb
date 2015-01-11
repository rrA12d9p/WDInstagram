class AddUserRefToEntry < ActiveRecord::Migration
  def change
    add_reference :entries, :user, index: true
    add_foreign_key :entries, :users
  end
end
