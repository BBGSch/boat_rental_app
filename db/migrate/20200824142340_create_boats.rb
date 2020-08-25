class CreateBoats < ActiveRecord::Migration[6.0]
  def change
    create_table :boats do |t|
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.integer :capacity
      t.string :description
      t.decimal :price

      t.timestamps
    end
  end
end
