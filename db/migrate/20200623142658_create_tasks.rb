class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id, null: false
      t.integer :desire_id, null: false
      t.date :target_date, null: false
      t.string :title, null: false
      t.text :detail
      t.integer :status, null: false

      t.timestamps

      t.index :user_id
      t.index :desire_id
    end
  end
end