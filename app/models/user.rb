class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :money, presence: true
  validates :admin, presence: true

  include EmailValidatable
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :email, email: true



  has_many :cats
  has_many :agencies, through: :cats

end
