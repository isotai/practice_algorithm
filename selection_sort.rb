# def selection_sort(random_num)
#   min_num_index = 0

#   for i in 0..(random_num.length - 2) do
#     for j in (0 + i)..(random_num.length - 2) do
#       min_num_index = j
#       min_num_index = j + 1 if random_num[j] >= random_num[j + 1]
#       tmp_num = random_num[j]
#       random_num[j] = random_num[min_num_index]
#       random_num[min_num_index] = tmp_num
#     end
#   end
#    random_num
# end



def selection_sort(random_num)
  min_num_index = 0
  for i in 0..(random_num.length - 2) do

    min_num_index = i
    for j in (0 + i)..(random_num.length - 2) do
      if random_num[min_num_index] >= random_num[j + 1]
       min_num_index = (j + 1)
      end
    end
      tmp_num = random_num[i]
      random_num[i] = random_num[min_num_index]
      random_num[min_num_index] = tmp_num
  end
   random_num
end