# クイックソート [Quick Sort]
# クイックソートはリストにおいてピボットと呼ぶ要素を軸に分割を繰り返して整列を行うアルゴリズムです。

# 「分割を繰り返して整列を行う」ような手法を分割統治法 divide-and-conquer と呼びます。

# アルゴリズム分析
# 要素数が1つかそれ以下なら整列済みとみなしてソート処理を行わない
# ピボットとなる要素をピックアップする
# ピボットを中心とした2つの部分に分割する - ピボットの値より大きい値を持つ要素と小さい値を持つ要素
# 分割された部分(サブリスト)に再帰的にこのアルゴリズムを適用する
# 分割統治法は手順 4. にあるように再帰処理で実現されます。

# 分割統治法 divide-and-conquer
# 分割統治法とは大きな問題を小さな問題に分割することによって全体を解決しようとする方法です。

# クイックソートではピボットと呼ぶ軸となる要素の値より大きい要素群、小さい要素群という具合にソートの対象となる部分を小さくしてゆきながら全体のソートを完了させます。

#
def quick_sort(random_num)

  return random_num if random_num.length < 1

  pivot = random_num[0]
  left_arry = []
  right_arry = []

  for i in 1..(random_num.length - 1) do
    if (random_num[i] <=  pivot)
      left_arry << (random_num[i])
    elsif
      right_arry << (random_num[i])
    end
  end
  left_arry = quick_sort(left_arry)
  right_arry = quick_sort(right_arry)
  foo = [pivot]
  left_arry + foo + right_arry
  return left_arry + foo + right_arry
end