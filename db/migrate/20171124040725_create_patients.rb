class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.text :name
      t.date :dob
      t.text :phone
      t.text :address
      t.text :medicare
      t.text :health_fund
      t.text :email
      t.string :password_digest
      t.timestamps
    end
  end
end
