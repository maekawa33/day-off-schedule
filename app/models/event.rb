class Event < ApplicationRecord
  belongs_to :schedule

  mount_uploader :image, ImageUploader
end
q