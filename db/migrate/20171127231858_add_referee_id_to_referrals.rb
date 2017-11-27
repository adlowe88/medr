class AddRefereeIdToReferrals < ActiveRecord::Migration[5.1]
  def change
    add_column :referrals, :referee_id, :integer
  end
end
