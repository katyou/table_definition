# == Schema Information
#
# Table name: area_cities
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  project_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null

class UserProject < ApplicationRecord
  belongs_to :user
  belongs_to :project
end
