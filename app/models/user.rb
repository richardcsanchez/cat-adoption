class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :money, presence: true
  validates :admin, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true



  has_many :cats
  has_many :agencies, through: :cats

end
