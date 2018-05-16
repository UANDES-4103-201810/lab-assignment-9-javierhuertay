class Director < ApplicationRecord
  has_many :movies
  form_for(@director)
end
