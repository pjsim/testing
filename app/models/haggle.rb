class Haggle < ActiveRecord::Base
  belongs_to :commodity
  has_many :offers
end
