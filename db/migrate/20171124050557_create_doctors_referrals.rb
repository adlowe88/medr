class CreateDoctorsReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors_referrals do |t|
      t.integer :doctor_id
      t.integer :referral_id
    end
  end
end
