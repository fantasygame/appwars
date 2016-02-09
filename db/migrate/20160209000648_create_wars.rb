class CreateWars < ActiveRecord::Migration[5.0]
  def change
    create_table :wars do |t|
      t.text :description

      t.timestamps
    end
  end
end
