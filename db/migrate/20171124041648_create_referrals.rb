class CreateReferrals < ActiveRecord::Migration[5.1]
  def change
    create_table :referrals do |t|
      t.text :time
      t.timestamps
    end
  end
end
