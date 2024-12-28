class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title, null: false
      t.text :description
      t.string :status, null: false

      t.timestamps
    end
    add_index :tasks, :title, unique: true
  end
end
