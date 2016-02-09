class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :war, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
