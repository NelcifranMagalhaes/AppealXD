class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :address
      t.date :duration_time
      t.integer :max_people
      t.float :ticket_value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
