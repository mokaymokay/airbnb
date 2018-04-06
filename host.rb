require_relative 'listing'

class Host

  attr_accessor :name, :listing

  def initialize(name, listing = [])
    @name = name
    @listing = listing
  end

  def create_listing(bed, dates_available, price, cancellation, host = self.name)
    new_listing = Listing.new(bed, dates_available, price, cancellation, host, guest, reviews)
    self.listing << new_listing
  end

end

andrew = Host.new("andrew")
andrew.create_listing(1, { april: [7, 8, 14, 15, 21, 22] }, 100, "flexible")
p andrew.listing
