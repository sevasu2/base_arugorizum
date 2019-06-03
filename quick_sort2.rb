def mid(x , y , z)
	if x < y then
		if y < z then
			return y
		elsif z < x then
			return x
		else
			return z
		end
	else
		 if z < y then
			return y
		elsif x < z then
			return x
		else
			return z
		end
	end
end

def quickSort(numbers , beginNum , endNum)

	if endNum - beginNum <= 1 then
		return numbers
	end

	# 左辺と右辺の開始位置を定義
	leftNum = beginNum
	rightNum = endNum

	if beginNum >= endNum then
		return numbers
	end

	# ピボット(中央の値)
	midNum = leftNum + ((rightNum - leftNum)/2)
	pivot = mid(numbers[leftNum] , numbers[midNum] , numbers[rightNum])

	# ソート処理実行（pivotが交差するまで続行）
	while true do

		# 左辺のpivotよりも大きい値見つける
		while numbers[leftNum] < pivot do
			leftNum = leftNum + 1
		end

		# 右辺のpivotよりも小さい値をみつける
		while numbers[rightNum] > pivot do
			rightNum = rightNum - 1
		end

		# pivotが交差したら終了
		if leftNum >= rightNum then
			break
		end

		# 値の入れ替え処理
		tmp  = numbers[leftNum]
		numbers[leftNum]   = numbers[rightNum]
		numbers[rightNum] = tmp

		# 繰り返し対応
		leftNum = leftNum + 1
		rightNum = rightNum - 1

	end

	# pivotの左辺のソート処理
	numbers = quickSort(numbers , beginNum , leftNum )

	# pivotの右辺のソート処理
	numbers = quickSort(numbers , rightNum , endNum)

    return numbers

end

numbers = [10,2,12,7,16,8,13]
print quickSort(numbers , 0 , numbers.count-1) ,"\n"