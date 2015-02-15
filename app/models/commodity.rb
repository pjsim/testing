class Commodity < ActiveRecord::Base
  has_many :haggles
  has_many :offers, through: :haggles
end
