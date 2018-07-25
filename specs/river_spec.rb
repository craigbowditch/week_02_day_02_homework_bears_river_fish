require 'minitest/autorun'
require 'minitest/rg'
require_relative '../river.rb'
require_relative '../bear.rb'
require_relative '../fish.rb'

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Amazon")

    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Cod")
    @fish3 = Fish.new("Salmon")
  end

  def test_name_of_river()
    assert_equal("Amazon", @river.name)
  end

  def test_add_fish_to_river()
    @river.add_fish(@fish1)
    assert_equal(1, @river.number_of_fish())
  end

  def test_add_two_fish_to_river()
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    assert_equal(2, @river.number_of_fish())
  end

  def test_remove_fish_from_river
    @river.add_fish(@fish1)
    @river.add_fish(@fish2)
    @river.remove_fish(@fish1)
    assert_equal(1, @river.number_of_fish())
  end
















end
