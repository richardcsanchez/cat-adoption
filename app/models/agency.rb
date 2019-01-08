class Agency < ApplicationRecord
  validates :name, :state, :email, presence: :true
  validates :phone_number, length: {is: 10}


  include EmailValidatable
  validates :email, uniqueness: true
  validates :email, email: true
end
