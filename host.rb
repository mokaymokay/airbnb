require_relative 'listing'

class Host

  attr_accessor :name, :listing

  def initialize(name, listing = {})
    @name = name
    @listing = listing
  end

  def create_listing(bed, dates_available, price, cancellation = "strict")
    new_listing = Listing.new(bed, dates_available, price, cancellation, self.name)
    self.listing[(@listing.length + 1)] = new_listing
    new_listing
  end

end

module HostList
  HOSTS = {}
  def self.add_host host
    HOSTS[(HOSTS.length + 1)] = host 
  end
end

andrew = Host.new("andrew")
HostList.add_host(andrew)
andrew.create_listing(1, { april: [7, 8, 14, 15, 21, 22] }, 100, "flexible")
andrew.create_listing(10, { april: [7, 8, 14, 15, 21, 22] }, 5000)
#p andrew.listing
#p andrew.listing[2]
#p andrew
