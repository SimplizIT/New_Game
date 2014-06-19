class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :fname
      t.string :lname
      t.integer :card_number

      t.timestamps
    end
  end
end
