# == Schema Information
#
# Table name: tables
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Table < ApplicationRecord
  has_many :columns

  belongs_to :project
end
