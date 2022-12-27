class Schedule < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :events, dependent: :destroy

  accepts_nested_attributes_for :events, reject_if: :all_blank, allow_destroy: true
  
end
