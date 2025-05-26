def bubble_sort(arr)
  n = arr.length
  for i in 0...(n - 1)
    for j in 0...(n - i - 1)
      if arr[j] > arr[j + 1]
        temp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = temp
      end
    end
  end
  arr
end

p bubble_sort([4, 3, 78, 2, 0, 2])
