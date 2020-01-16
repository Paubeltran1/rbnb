class Pleureuse < ApplicationRecord
  belongs_to :user
  validates :pseudo, presence: true
  validates :city, presence: true
  validates :gender, presence: true
  validates :price, presence: true
end
