class CreateConditionsReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :conditions_referrals do |t|
      t.integer :condition_id
      t.integer :referral_id
    end
  end
end
