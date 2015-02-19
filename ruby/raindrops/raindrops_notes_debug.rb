require 'prime'

class Raindrops
  SOUNDS = {3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(number)
    i = 0
    x = number
    my_primes = Array.new
    primes = Prime.first 100
    sounds = String.new

    while x > 1 do
      #determine if x is a whole number
      if x.to_f / primes[i] % 1 != 0
        #if not, try next prime number
        i += 1
        puts "line 18: i succ'd to #{i}, and prime = #{primes[i]}"

      else
        puts " line 21: i = #{i}, x = #{x}, prime = #{primes[i]}, my_primes = #{my_primes}"
        #if so, x = remainder.
        x = x / primes[i]

        #keep track of all prime factors without duplicates
        my_primes << primes[i] if my_primes.last != primes[i]
         puts "line 27: my_primes = #{my_primes}"

        #assign sound based on prime number
        if primes[i] == 3 || primes[i] == 5 || primes[i] == 7
          puts "line 30: I'm in sounds! and i = #{i}, x = #{x}, prime = #{primes[i]}, my_primes = #{my_primes}"
          (sounds << SOUNDS[primes[i]] && last_sound = SOUNDS[primes[i]]) if last_sound != SOUNDS[primes[i]]
          puts "line 32: sounds = #{sounds}"
        end
      end
    end

    puts "line 37: sounds = #{sounds} before"
    #check to see if no prime factors
    if sounds.empty?
      #if so, return the number
      sounds << "#{number}"
      puts "line 40: sounds = #{sounds} after"
    end
    puts "line 42: final sounds = #{sounds}"
    sounds
  end
end
