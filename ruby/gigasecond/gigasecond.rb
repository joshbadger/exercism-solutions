class Gigasecond

  # def self.from(x)
  #   #convert from date to seconds and store as variable
  #   sec = x.to_time.tv_sec
  #
  #   #add a gigasecond to it
  #   sec += 10**9
  #
  #   #convert back into date
  #   anniv = Time.at(sec)
  #
  #   #reset to 2043-01-01 00:00:00
  #   Date.new(anniv.year, anniv.month, anniv.day)
  # end

   def self.from(x)
     Date.new(Time.at(x.to_time.tv_sec + 10**9).year,
              Time.at(x.to_time.tv_sec + 10**9).month,
              Time.at(x.to_time.tv_sec + 10**9).day)
  end

end
