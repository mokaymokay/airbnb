class Listing
  attr_accessor :host, :bed, :dates_available, :price, :cancellation, :guest, :reviews

  def initialize(host, bed, dates_available, price, cancellation = "strict", guest = {}, reviews = {})
    @host = host
    @bed = bed
    @dates_available = dates_available
    @price = price
    @cancellation = cancellation
    @guest = guest
    @reviews = reviews
  end

  def reserve_and_pay(guest_name, month, dates)
    @guest[guest_name.to_sym] = dates
    @dates_available = @dates_available[month] - dates
    puts @price * dates.length
  end

  def leave_review(review)
    @reviews[@guest.keys[0]] = review
  end

end

my_house = Listing.new("andrew", 1, { april: [7, 8, 14, 15, 21, 22] }, 100)
my_house.reserve_and_pay("kay", :april, [7, 8])
p my_house.guest
p my_house.dates_available

my_house.leave_review("nice pool, comfy bed =)")
p my_house.reviews
