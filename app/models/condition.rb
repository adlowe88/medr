# == Schema Information
#
# Table name: conditions
#
#  id         :integer          not null, primary key
#  condition  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Condition < ApplicationRecord

  has_and_belongs_to_many :referrals, :optional => true

end
