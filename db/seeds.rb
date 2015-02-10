#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

commodities = Commodity.create([
  { title: 'Apple', description: 'It\'s an apple' },
  { title: 'Banana', description: 'It\'s an banana' },
  { title: 'Pineapple', description: 'It\'s an pineapple' },
  { title: 'Pickles', description: 'It\'s an pickles' },
  { title: 'Orange', description: 'It\'s an orange' },
  { title: 'Pear', description: 'It\'s an pear' },
  { title: 'Grapes', description: 'It\'s an grapes' }
])

haggles = Haggle.create([
  { open: true, commodity: Commodity.first }
])

offers = Offer.create([
  { haggle: Haggle.first, price: 10, meet_me: true }
])
