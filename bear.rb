class Bear

  attr_reader :name, :type

  def initialize(name, type)

    @name = name
    @type = type
    @stomach = []

  end

  def stomach_count()
    return @stomach.count()
  end

  def add_to_bear(fish)
    @stomach.push(fish)
  end

  def eats_fish(river)
    fish = river.remove_fish(fish)
    @stomach.push(fish)
  end

  def roar()
    return "ROOOOOAAAAARRRRRRR!!!!"
  end






end
