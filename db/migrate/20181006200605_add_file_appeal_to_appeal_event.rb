class AddFileAppealToAppealEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :file_appeal, :string
  end
end
