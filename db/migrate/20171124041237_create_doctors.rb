class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.text :name
      t.text :provider_number
      t.text :phone
      t.date :dob
      t.text :address
      t.text :email
      t.string :password_digest
      t.timestamps
    end
  end
end
