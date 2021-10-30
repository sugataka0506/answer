class CreateUserOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :user_options do |t|
      t.integer :option_id
      t.integer :user_id

      t.timestamps
    end
  end
end
