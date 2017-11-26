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

  validates :email, :presence => true, :uniqueness => true
end
