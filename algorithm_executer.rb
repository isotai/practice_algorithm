require './bubble_sort.rb'
require './selection_sort'
require './quick_sort'
require './binary_search'
require './linar_search'
require 'benchmark'


RANDOM_NUM = Array.new(10000) { rand(1...10000) }
SORTED_NUM = (1..100).to_a

#p bubble_sort(RANDOM_NUM)
# p selection_sort(RANDOM_NUM)
#quick_sort(RANDOM_NUM)
#binary_search(SORTED_NUM,target_num:0)
#linar_search(SORTED_NUM,target_num:20)


Benchmark.bm 3 do |r|
  r.report "bubble_sort" do
    bubble_sort(RANDOM_NUM)
  end
  r.report "selection_sort" do
    selection_sort(RANDOM_NUM)
  end
  r.report "quick_sort" do
    quick_sort(RANDOM_NUM)
  end
end
