class CreateOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :options do |t|
      t.string :option
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
