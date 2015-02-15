class Offer < ActiveRecord::Base
  belongs_to :haggle
  enum intention: ['float', 'initial', 'counter']
  validates :intention, :haggle_id, presence: true

end
