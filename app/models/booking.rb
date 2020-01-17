class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pleureuse

  def to_s
    "#{pleureuse.name} from: #{start_date} to: #{end_date}"
  end
end

