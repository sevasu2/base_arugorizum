def insertion_sort(a)
  n = a.size
  1.upto(n - 1) do |j|
    temp = a[j]
    i = j
    while i > 0 && a[i - 1] > temp
      a[i] = a[i - 1]
      i -= 1
    end
    if a[i] != temp
      a[i] = temp
      p a
    end
  end
end

insertion_sort [2, 5, 3, 1, 4, 6]