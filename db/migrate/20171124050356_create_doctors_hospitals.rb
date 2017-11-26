class CreateDoctorsHospitals < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors_hospitals do |t|
      t.integer :doctor_id
      t.integer :hospital_id
    end
  end
end
