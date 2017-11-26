# == Schema Information
#
# Table name: referrals
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  patient_id :integer
#

class Referral < ApplicationRecord
  belongs_to :patient, :optional => true
  has_and_belongs_to_many :doctors, :optional => true
end
