require 'rails_helper'

RSpec.describe Event, type: :model do
	context 'Salvando dados' do

	  it 'Todos os dados válidos' do
		    event = create(:event)
		    expect(event).to be_valid  
		end

		it 'Nome inválido' do
			event = build(:event,name: nil)#usar build que não salva
			event.valid?
			expect(event.errors[:name]).to include("não pode ficar em branco")
			
		end
		it 'Endereço inválido' do
			event = build(:event,address: nil)#usar build que não salva
			event.valid?
			expect(event.errors[:address]).to include("não pode ficar em branco")
			
		end
		it 'Tempo de duração inválido' do
			event = build(:event,duration_time: nil)#usar build que não salva
			event.valid?
			expect(event.errors[:duration_time]).to include("não pode ficar em branco")
			
		end
		it 'Numero máximo de pessoas inválido' do
			event = build(:event,max_people: nil)#usar build que não salva
			event.valid?
			expect(event.errors[:max_people]).to include("não pode ficar em branco")
			
		end
		it 'Valor do ingresso inválido' do
			event = build(:event,ticket_value: nil)#usar build que não salva
			event.valid?
			expect(event.errors[:ticket_value]).to include("não pode ficar em branco")
			
		end

	end
end
