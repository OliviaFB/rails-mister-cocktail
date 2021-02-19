class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: :ingredient,
    message: "Should be unique for a given cocktail/ingredient couple" }
  belongs_to :cocktail
  belongs_to :ingredient
end
