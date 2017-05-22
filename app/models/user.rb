# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  company_id             :integer          not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  status                 :integer          default("0"), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#


class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :projects, through: :user_projects

  # validates :status, inclusion: {in: 1..3}, presence: true

  #admin:会社ごとの管理者。ユーザー消せる user:ユーザー読み書きのみ reader:読み込みのみ
  enum status: { admin: 1, user: 2, reader: 3, }

  validates :name, presence: true
  validates :email, presence: true
  validates :company_id, presence: true
  validates :password, presence: true

end
