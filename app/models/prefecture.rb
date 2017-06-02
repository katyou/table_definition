class Prefecture < ApplicationRecord
  has_many :companies
  belongs_to :region
end
