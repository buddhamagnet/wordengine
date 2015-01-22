class CreateFragments < ActiveRecord::Migration
  def change
    create_table :fragments do |t|
      t.references :story, index: true
      t.references :user
      t.string :type
      t.text :content

      t.timestamps null: false
    end
    add_foreign_key :fragments, :stories
    add_foreign_key :fragments, :users
  end
end
