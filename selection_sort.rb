# 選択ソート
# 選択ソートは配列の最小値(最大値)を持つ要素を探して、それを配列の先頭要素と交換することで整列を行うアルゴリズムです。

# アルゴリズム分析
# 配列の先頭要素を仮の最小値を持つ要素(A0)としておく
# (A0)と(A0)以外の要素の値を比較して(A0)より小さい値を持つ要素(A1)が見付かれば(A1)と(A0)の値を交換する
# 2.を繰り返すことで(A0)には配列内での最小値がセットされる
# 次は(A0)を除いて(A1)と(A1)以外の要素、(A1)を除いて(A2)と(A2)以外の要素を比較/交換して整列が完了する

def selection_sort(random_num)
  index = 0
  count = 0
  min_num = 0
   (random_num.length - 1).times do
   count += 1
    (random_num.length - count).times do
      min_num_index = index
      if random_num[index] >= random_num[index + 1]
         min_num_index = index + 1
      end
      tmp_num = random_num[index]
      random_num[index] = random_num[min_num_index]
      random_num[min_num_index] = tmp_num
      index += 1
    end
    index = 0
  end
　 random_num
end