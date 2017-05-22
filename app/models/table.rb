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
  has_many :columns, dependent: :destroy, inverse_of: :table
  accepts_nested_attributes_for :columns, allow_destroy: true

  belongs_to :project

  validates :physical_name, presence: true
  validates :logical_name, presence: true
end
