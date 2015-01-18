class CreatePoems < ActiveRecord::Migration
  def change
    create_table :poems do |t|
      t.references :user, index: true
      t.text :poem

      t.timestamps null: false
    end
    add_foreign_key :poems, :users
  end
end
