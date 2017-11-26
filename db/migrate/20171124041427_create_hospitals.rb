class CreateHospitals < ActiveRecord::Migration[5.1]
  def change
    create_table :hospitals do |t|
      t.text :name
      t.text :address
      t.text :phone
      t.text :email
      t.timestamps
    end
  end
end
