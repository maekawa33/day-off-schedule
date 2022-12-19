class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :favorites
  has_many :schedules
end
