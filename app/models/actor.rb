class Actor < ApplicationRecord
  has_many :movies , through: :ActorMovie
end
