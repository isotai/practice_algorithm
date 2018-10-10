def linar_search(sorted_num,target_num:)
  sorted_num.each do |n|
    return "found at #{n}" if n == target_num
  end
   "not found"
end