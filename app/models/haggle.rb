class Haggle < ActiveRecord::Base
  belongs_to :commodity
  has_many :offers
  validates :commodity_id, :open, :buyer, :seller, presence: true
end
