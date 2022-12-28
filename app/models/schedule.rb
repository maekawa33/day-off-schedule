class Schedule < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :events, dependent: :destroy

  accepts_nested_attributes_for :events, reject_if: :all_blank, allow_destroy: true
  
  validate :three_main_events_validate

  three_main_events = 3
  main_event_count = 0

  def three_main_events_validate
    events.each do |evnet|
      if event.three_main_events == true
        main_event_count += 1
      end
    end

    if main_event_count != three_main_events
      errors.add(:events, "main_events fail")
    end
  end
end
