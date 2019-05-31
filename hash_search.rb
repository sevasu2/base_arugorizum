def hash_init(nums)
  hashes = []
  hashes = Array.new(nums.size * 2, 0)
  nums.each do |num|
    k = num % hashes.size
    while_count = 0
    while hashes[k] != 0 || while_count < hashes.size
      k = (k+1) % hashes.size
      while_count += 1
    end
    hashes[k] = num
  end
  hashes
end

def hash_search(nums, aim)
  hashes = hash_init(nums)
  p "hashes: #{hashes}"
  k = aim % hashes.size
  hashes.size.times do
    case hashes[k]
    when 0
      return nil
    when aim
      return k
    else
      k = (k+1) % hashes.size
    end
  end
end

nums = [12, 25, 36, 20, 30, 8, 42]
aim = 36
hit = hash_search(nums, aim)
p "nums: #{nums}"
p "aim: #{aim}, index: #{hit}"