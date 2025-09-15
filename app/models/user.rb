class User < ApplicationRecord
  has_many :todos, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  has_secure_password
  validates :password, length:{minimum: 6}, presence: true, allow_nil: true
end
