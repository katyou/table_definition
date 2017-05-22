class CreateColumns < ActiveRecord::Migration[5.0]
  def change
    create_table :columns do |t|
      t.string   :physical_name,  null: false
      t.string   :logical_name,   null: false
      t.integer  :table_id,       null: false
      t.string   :data_type,      null: false
      t.boolean  :null_false,     null: false,  default: 0
      t.string   :foreign_key,    null: false,  default: 0
      t.integer  :default_value


      t.timestamps
    end
  end
end
