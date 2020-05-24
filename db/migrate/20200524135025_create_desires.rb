class CreateDesires < ActiveRecord::Migration[5.0]
  def change
    create_table :desires do |t|
      t.integer :user_id
      t.string :title
      t.text :todo
      t.integer :status

      t.timestamps
    end
  end
end
