brian = User.create!(username: "bsheridan12", email: "bsheridan12@gmail.com", password: "test")
mike = User.create!(username: "mike", email: "mike12@gmail.com", password: "test")

transportation = Category.create(name: "Transportation")
video_games = Category.create(name: "Video Games")
electronics = Category.create(name: "Electronics")

airwheel = Product.create(price: 500, name: "AirWheel", category: transportation)
dragonage = Product.create(price: 60, name: "Dragon Age", category: video_games)
nba2k15 = Product.create(price: 30, name: "NBA 2015", category: video_games)
bose = Product.create(price: 300, name: "Bose Overear Headphobes", category: electronics)

brians_order = Order.create(purchaser: brian)
brians_second_order = Order.create(purchaser: brian)
mikes_order = Order.create(purchaser: mike)

mikes_fist_lineitem = Lineitem.create(order: mikes_order, product: airwheel)
mikes_second_lineitem = Lineitem.create(order: mikes_order, product: nba2k15)

brians_first_lineitem = Lineitem.create(order: brians_order, product: dragonage)
brians_second_lineitem = Lineitem.create(order: brians_order, product: bose)
brians_third_lineitem = Lineitem.create(order: brians_second_order, product: airwheel)


