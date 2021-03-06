class Pleureuse < ApplicationRecord

  include PgSearch::Model
  pg_search_scope :search_by_pseudo_and_city,
    against: [ :pseudo, :city],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  def self.perform_search(keyword)
    if keyword.present?
    then Pleureuse.search_by_pseudo_and_city(keyword)
    else Pleureuse.all
    end
  end

  belongs_to :user
  has_many_attached :pictures
  validates :pseudo, presence: true
  validates :city, presence: true
  validates :gender, presence: true
  validates :price, presence: true

  GENDER = ['Male', 'Female']
  DRAMA = ['Maitresse', 'Accusation', 'Se roule par terre']

end


