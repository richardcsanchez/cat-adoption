class Cat < ApplicationRecord
  belongs_to :agency
  belongs_to :user

  validates :name, :breed, :disposition, :age, :sex, :agency_id, presence: :true

  def adopted?
    self.adopted == true
  end

end
