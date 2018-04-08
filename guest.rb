require_relative 'host.rb'

include HostList

class Guest
  attr_accessor :name

  def initialize(name)
    @name = name
  end
  
  # TODO we probably need to rename the host variable but this works for now
  def reserve_and_pay(host_id, listing_id, month, dates, name = self.name)
    host = HOSTS[host_id].listing[listing_id]
    host.guest[name.to_sym] = dates
    host.dates_available = host.dates_available[month.to_sym] - dates
    puts host.price * dates.length
  end

  # TODO see above comment
  def leave_review(host_id, listing_id, review)
    host = HOSTS[host_id].listing[listing_id]
    host.reviews[host.guest.keys[0]] = review
    puts host.reviews
  end

end

kay = Guest.new("kay")
#p HOSTS[1].listing[1].dates_available[:april]
kay.reserve_and_pay(1, 1,"april",[7,8])
kay.leave_review(1, 1, "nice crib yo")
# p HOSTS[1].listing[1]
