require './bubble_sort.rb'
require './selection_sort'
require './quick_sort'
require './binary_search'
require './linar_search'


RANDOM_NUM = Array.new(10) { rand(1...10) }
SORTED_NUM = (1..100).to_a

#bubble_sort(RANDOM_NUM)
#selection_sort(RANDOM_NUM)
#quick_sort(RANDOM_NUM)
#binary_search(SORTED_NUM,target_num:0)
p linar_search(SORTED_NUM,target_num:20)
