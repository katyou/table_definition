class CreateColumns < ActiveRecord::Migration[5.0]
  def change
    create_table :columns do |t|
      t.string :name
      t.integer :table_id
      t.string :data_type
      t.string :logical_name

      t.timestamps
    end
  end
end
