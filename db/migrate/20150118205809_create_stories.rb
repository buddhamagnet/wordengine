class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.references :user, index: true
      t.text :extract

      t.timestamps null: false
    end
    add_foreign_key :stories, :user
  end
end
