class CreatePersonas < ActiveRecord::Migration[5.2]
  def change
    create_table :personas do |t|
      t.string :name
      t.string :cnpj
      t.string :social_reason
      t.string :fantasy_name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
