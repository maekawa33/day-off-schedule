class Schedule < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :events
end
