def selection_sort(a)
  n = a.size
  0.upto(n - 2) do |i|
    min = i
    (i + 1).upto(n - 1) do |j|
      min = j if a[j] < a[min]
    end
    if i != min
      a[i], a[min] = a[min], a[i]
      p a
    end
  end
end

selection_sort [2, 5, 3, 1, 4, 6]