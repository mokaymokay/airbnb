require_relative 'host.rb'

include HostList

class Guest
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def reserve_and_pay(month, dates, name = self.name)
    host = HOSTS[1].listing[1].guest
    host[name.to_sym] = dates
    @dates_available = @dates_available[month] - dates
    puts @price * dates.length
  end

  def leave_review(review)
    @reviews[@guest.keys[0]] = review
  end

end

kay = Guest.new("kay")
kay.reserve_and_pay("april",[7,8])
# p HOSTS[1].listing[1]