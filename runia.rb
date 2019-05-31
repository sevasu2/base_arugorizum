# 線形探索法（リニアリサーチ）
# 配列の頭から順番に値を検索する方法

array = [4,2,6,1,3,8,9,5]
numbers_of_arrary = array.count

def linear_search(array, numbers_of_arrary, target)

	index = 0

	loop do
		if index == numbers_of_arrary
			return -1
		elsif array[index] == target
			return index
		end
		index += 1
	end
end

target = 5

result = linear_search(array, numbers_of_arrary, target)

if result == -1
	puts "値:#{target}は配列内にありません"
else
	puts "値:#{target}のインデックス:#{result}"
end