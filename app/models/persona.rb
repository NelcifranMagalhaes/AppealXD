class Persona < ApplicationRecord
  belongs_to :user
  validates :name,presence: true
  validates :cnpj,presence: true
  validates :social_reason,presence: true
  validates :fantasy_name,presence: true
  validate :validate_one_guy

  def validate_one_guy
  	if Persona.where(user: self.user).size > 0
  		errors.add(:user, "Só pode haver um cadastro com seu usuário")
  	end

  end

end
