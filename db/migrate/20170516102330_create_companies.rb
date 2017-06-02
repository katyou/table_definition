class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string  :name,           null: false
      t.integer :company_tel,    null: false
      t.string  :company_email,  null: false
      t.integer :region,         null: false
      t.integer :prefecture_id,  null: false
      t.string  :address1,       null: false
      t.string  :address2,       null: false

      t.timestamps
    end
  end
end
