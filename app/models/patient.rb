# == Schema Information
#
# Table name: patients
#
#  id              :integer          not null, primary key
#  name            :text
#  dob             :date
#  phone           :text
#  address         :text
#  medicare        :text
#  health_fund     :text
#  email           :text
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Patient < ApplicationRecord
  has_secure_password

  has_many :referrals
  has_many :doctors, :through => :referrals

  validates :email, :presence => true, :uniqueness => true
end
