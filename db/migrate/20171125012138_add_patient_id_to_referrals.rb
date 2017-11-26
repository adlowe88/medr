class AddPatientIdToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :patient_id, :integer
  end
end
