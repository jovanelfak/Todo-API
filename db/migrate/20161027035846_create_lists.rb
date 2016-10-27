class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.integer :itemsNum
      t.integer :itemsToDo
      t.integer :itemsDone
      t.date :expDate

      t.timestamps null: false
    end
  end
end
