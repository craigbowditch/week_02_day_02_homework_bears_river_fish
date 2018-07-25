require 'minitest/autorun'
require 'minitest/rg'
require_relative '../fish.rb'
require_relative '../river.rb'

class FishTest < MiniTest::Test

  def setup

    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Cod")

  end

  def test_name_of_fish()
    assert_equal("Cod", @fish2.name)
  end









end
