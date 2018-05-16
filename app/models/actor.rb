class Actor < ApplicationRecord
  has_many :movies , through: :ActorMovie
  form_for(@actor)
end
