class CreateIdeas < ActiveRecord::Migration[5.0]
  def change
    create_table :ideas do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.text :description
      t.integer :duration_in_seconds

      t.timestamps
    end
  end
end
