# == Schema Information
#
# Table name: referrals
#
#  id          :integer          not null, primary key
#  time        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  patient_id  :integer
#  referrer_id :integer
#  referee_id  :integer
#

class Referral < ApplicationRecord
  belongs_to :patient, :optional => true

  belongs_to :referrer, class_name: "Doctor", primary_key: "referrer_id", :optional => true
  belongs_to :referee, class_name: "Doctor", primary_key: "referee_id", :optional => true

end
