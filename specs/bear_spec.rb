require 'minitest/autorun'
require 'minitest/rg'
require_relative '../bear.rb'
require_relative '../fish.rb'
require_relative '../river.rb'

class BearTest < MiniTest::Test

  def setup

    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Cod")
    @river = River.new("Amazon")
  end

  def test_name_of_bear()
    assert_equal("Yogi", @bear.name)
  end

  def test_type_of_bear()
    assert_equal("Grizzly", @bear.type)
  end

  def test_add_fish_to_bear()
    @bear.add_to_bear(@fish1)
    assert_equal(1, @bear.stomach_count())
  end

  def test_add_two_fish_to_bear()
    @bear.add_to_bear(@fish1)
    @bear.add_to_bear(@fish2)
    assert(2, @bear.stomach_count())
  end

  def test_add_fish_to_bear_remove_from_river()
    @bear.eats_fish(@river)
    result1 = @bear.stomach_count()
    result2 = @river.number_of_fish()
    assert_equal(1, result1)
    assert_equal(0, result2)
  end

  def test_roar()
    result = @bear.roar()
    assert_equal("ROOOOOAAAAARRRRRRR!!!!", result)
  end











end
