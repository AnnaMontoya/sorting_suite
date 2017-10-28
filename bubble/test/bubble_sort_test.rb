require "minitest/autorun"
require "minitest/pride"
require "./bubble/lib/bubble_sort"

class BubbleSortTest < Minitest::Test

  def test_it_exits
    sorter = BubbleSort.new

    assert_instance_of BubbleSort, sorter
  end

  def test_it_will_swap_values_to_least_to_greatest
    sorter = BubbleSort.new

    assert_equal [0, 1], sorter.sort([1, 0])
  end

  def test_it_will_not_swap_values_if_already_in_correct_order
    sorter = BubbleSort.new

    assert_equal [0, 2], sorter.sort([0, 2])
  end

  def test_it_will_swap_values_for_entire_array
    sorter = BubbleSort.new

    assert_equal [1, 2, 3, 4], sorter.sort([4, 2, 1, 3])
  end

  def test_will_iterate_over_entire_array_of_strings
    sorter = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end
end
