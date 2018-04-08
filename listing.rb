class Listing
  attr_accessor :bed, :dates_available, :price, :cancellation, :host, :guest, :reviews

  def initialize(bed, dates_available, price, cancellation = "strict", host = "", guest = {}, reviews = {})
    @bed = bed
    @dates_available = dates_available
    @price = price
    @cancellation = cancellation
    @host = host
    @guest = guest
    @reviews = reviews
  end

  

end

# my_house = Listing.new("andrew", 1, { april: [7, 8, 14, 15, 21, 22] }, 100)
#my_house.reserve_and_pay("kay", :april, [7, 8])
#p my_house.guest
#p my_house.dates_available

#my_house.leave_review("nice pool, comfy bed =)")
#p my_house.reviews
