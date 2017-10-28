class BubbleSort

  def sort(array)
    loop do
      swapped = false
      array_length = array.length
      (array_length - 1).times do |index|
        if array[index] > array[index + 1]
          array[index], array[index + 1] = array[index + 1], array[index]
          swapped = true
        end
      end
      break if swapped == false
    end
    array
  end
end
