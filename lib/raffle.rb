class Raffle

  def initialize (names)
  end

  def self.do_raffle!(names)
    random_index = generate_random_number(names.size - 1)
    puts "Random_index = #{random_index}"
    puts "Names = #{names}"
    drawn = names[random_index]
    names.delete_at(random_index)
    return drawn
  end
  class <<self
    private
    def generate_random_number(max)
      rand(0..max)
    end
  end

end
