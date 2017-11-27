# == Schema Information
#
# Table name: doctors
#
#  id              :integer          not null, primary key
#  name            :text
#  provider_number :text
#  phone           :text
#  dob             :date
#  address         :text
#  email           :text
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Doctor < ApplicationRecord
  has_secure_password

  has_and_belongs_to_many :referrals, :optional => true
  has_and_belongs_to_many :hospitals, :optional => true

  has_many :sent_referrals, class_name: "Referral", foreign_key: "referrer_id"
  has_many :received_referrals, class_name: "Referral", foreign_key: "referee_id"

  validates :email, :presence => true, :uniqueness => true
end
