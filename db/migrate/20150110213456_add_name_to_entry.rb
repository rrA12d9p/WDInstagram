class AddNameToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :name, :text
  end
end
