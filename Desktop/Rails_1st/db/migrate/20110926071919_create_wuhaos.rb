class CreateWuhaos < ActiveRecord::Migration
  def change
    create_table :wuhaos do |t|
      t.string :name
      t.date :due_on
      t.boolean :completed

      t.timestamps
    end
  end
end
