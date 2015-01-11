class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
    	t.string :author, default: ""
			t.string :photo_url, default: ""
			t.datetime :date_taken
      t.timestamps null: false
    end
  end
end