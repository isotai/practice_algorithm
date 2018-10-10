# アルゴリズム分析
# リストを昇順に整列させる手順。

# 先頭の要素'A'と隣り合う次の要素'B'の値を比較する
# 要素'A'が要素'B'より大きいなら、要素'A'と要素'B'の値を交換する
# 先頭の要素を'B'に移し、要素'B'と隣り合う要素'C'の値を比較/交換する
# 先頭の要素を'C','D','E'...と移動しながら比較/交換をリストの終端まで繰り返す
# 最も大きい値を持つ要素がリストの終端へ浮かびあがる
# リストの終端には最も大きな値が入っているので、リストの終端の位置をずらして(要素数をひとつ減らして)手順1〜6を繰り返す
# 以上のように総当たりで比較を行い、条件に一致する交換を実行することで整列が完了します。

# 特徴
# リストの個数を n とすると、バブルソートは必ず n(n - 1)/2 回のスキャンが行われます。

# n 個のリストがある場合、1回目で1番目に重い(大きい)値がリストの終端に移動してゆき、2回目のスキャンで2番目に重い値を浮かびあがらせ、3回目のスキャンで・・・、という具合に n 回のスキャンで n 番目に重い値を浮かびあがらせるのがバブルソートの特徴です。 (条件を入れ換えると「軽い(小さい)値を浮かびあがらせる」と述べることができます)

# リストの個数が多くなればなるほど処理速度も遅くなりますが、シンプルなアルゴリズムなのでデータ量が少ないときには手軽に実装できます。

# def bubble_sort(random_num)
#   index = 0
#   count = 0
#    (random_num.length - 1).times do
#    count += 1
#     (random_num.length - count).times do
#       if random_num[index] >= random_num[index + 1]
#          tmp_num = random_num[index]
#          random_num[index] = random_num[index + 1]
#          random_num[index + 1] = tmp_num
#          tmp_num = nil
#       end
#       index += 1
#     end
#     index = 0
#   end
#   random_num
# end


def bubble_sort(random_num)
  for i in 0..(random_num.length - 2) do
    for j in 0..(random_num.length - 2 - i) do
      if random_num[j] >= random_num[j + 1]
         tmp_num = random_num[j]
         random_num[j] = random_num[j + 1]
         random_num[j + 1] = tmp_num
         tmp_num = nil
      end
    end
  end
  random_num
end