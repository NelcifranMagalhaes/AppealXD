class Event < ApplicationRecord
  belongs_to :user
  mount_uploader :file_appeal, FileAppealUploader
  
  validates :name,presence: true
  validates :address,presence: true
  validates :duration_time,presence: true
  validates :max_people,presence: true
  validates :ticket_value,presence: true

end
