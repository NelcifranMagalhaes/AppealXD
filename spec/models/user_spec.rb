require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Salvando dados' do

    it 'Todos os dados válidos' do
      user = create(:user)
      expect(user).to be_valid  
  	end

  	it 'email inválido' do
  		user = build(:user,email: nil)#usar build que não salva
  		user.valid?
  		expect(user.errors[:email]).to include("não pode ficar em branco")
  		
  	end

  end
end
