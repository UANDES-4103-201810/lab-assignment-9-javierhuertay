class Movie < ApplicationRecord
  has_many :actors , through: :ActorMovie
  has_one :director
  has_one :address
  has_and_belongs_to_many :categories
end
