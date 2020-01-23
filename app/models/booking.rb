class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :pleureuse


  def to_s
    "#{pleureuse.name} from: #{start_date} to: #{end_date}"
  end

  def total_days
    (end_date - start_date).to_i
  end

  def total_price
    return total_days * pleureuse.price
  end
end
