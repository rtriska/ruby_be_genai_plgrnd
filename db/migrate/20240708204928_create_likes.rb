class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.integer :likes
      t.integer :dislikes
      t.references :likeable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
