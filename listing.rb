class Listing
  attr_accessor :host, :bed, :dates_available, :cancellation, :guest, :reviews, :price
  def initialize(host, bed, dates_available, cancellation, guest, reviews, price)
    @host = host
    @bed = bed
    @dates_available = dates_available
    @cancellation = "strict"
    @guest = []
    @reviews = {}
    @price = price
  end
end
