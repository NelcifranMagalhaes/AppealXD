require 'rails_helper'

RSpec.describe Persona, type: :model do
	context 'Salvando dados' do

		it 'Nome inválido' do
			persona = build(:persona,name: nil)#usar build que não salva
			persona.valid?
			expect(persona.errors[:name]).to include("não pode ficar em branco")
			
		end
		it 'CNPJ inválido' do
			persona = build(:persona,cnpj: nil)#usar build que não salva
			persona.valid?
			expect(persona.errors[:cnpj]).to include("não pode ficar em branco")
			
		end
		it 'Razão social inválido' do
			persona = build(:persona,social_reason: nil)#usar build que não salva
			persona.valid?
			expect(persona.errors[:social_reason]).to include("não pode ficar em branco")
			
		end
		it 'Nick inválido' do
			persona = build(:persona,fantasy_name: nil)#usar build que não salva
			persona.valid?
			expect(persona.errors[:fantasy_name]).to include("não pode ficar em branco")
			
		end

	end
end
