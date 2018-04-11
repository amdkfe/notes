class CreateNotes < ActiveRecord::Migration[5.1]
  def up
    create_table :notes do |t|
      t.string :title , :limit => 100
      t.text :content
      t.integer :position
      t.timestamps
    end
  end

  def down
    drop_table :notes
  end
end
