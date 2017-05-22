class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.string  :physical_name
      t.string  :logical_name
      t.integer :project_id

      t.timestamps
    end
  end
end
