class AddCaptionToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :caption, :text
  end
end
