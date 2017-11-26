# == Schema Information
#
# Table name: hospitals
#
#  id         :integer          not null, primary key
#  name       :text
#  address    :text
#  phone      :text
#  email      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hospital < ApplicationRecord
  has_and_belongs_to_many :doctors
end
