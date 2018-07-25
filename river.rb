class River

  attr_reader :name

  def initialize(name)
    @name = name
    @number_of_fish = []
  end

  def number_of_fish()
    return @number_of_fish.count()
  end

  def add_fish(fish)
    @number_of_fish.push(fish)
  end

  def remove_fish(fish)
    @number_of_fish.delete(fish)
  end



end
