class Persona < ApplicationRecord
  belongs_to :user
  validates :name,presence: true
  validates :cnpj,presence: true
  validates :social_reason,presence: true
  validates :fantasy_name,presence: true

end
