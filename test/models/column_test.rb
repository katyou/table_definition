# == Schema Information
#
# Table name: columns
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  table_id     :integer
#  data_type    :string(255)
#  logical_name :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ColumnTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
