def bubble_sort(array)
  if array.length < 2
    return array
  end

  passes = 0
  sorted = false
  until sorted || array.length - passes < 2
    sorted = true
    (array.length - passes - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
    passes += 1
  end
  array
end