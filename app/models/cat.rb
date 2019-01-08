class Cat < ApplicationRecord
  belongs_to :agency
  belongs_to :owner

  validates :name, :breed, :age, :sex, :adopted, :neutered, :agency_id, presence: :true
  validates :owner_id, presence: true, if: :adopted?

  def adopted?
    self.adopted == true
  end

end
