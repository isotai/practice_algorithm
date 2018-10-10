def binary_search(sorted_num,target_num:)
  f = 0
  l = (sorted_num.length - 1)

  while f < l do
    middle_index = (f + l) / 2
    p middle_index
    p "f is #{f}"
    p "l is #{l}"
    return "found at #{middle_index}" if sorted_num[middle_index] == target_num

    if sorted_num[middle_index] < target_num
      f = middle_index
    else
      l = middle_index
    end
  end
   "not found"
end