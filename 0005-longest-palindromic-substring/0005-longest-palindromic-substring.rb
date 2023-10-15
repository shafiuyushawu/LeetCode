# @param {String} s
# @return {String}
def longest_palindrome(s)
  return s if s.length <= 1

  start = 0
  max_length = 0

  (0...s.length).each do |i|
    # Find the length of the palindrome centered at i
    len1 = expand_around_center(s, i, i)
    len2 = expand_around_center(s, i, i + 1)
    len = [len1, len2].max

    # If we found a longer palindrome, update the start and max_length
    if len > max_length
      start = i - (len - 1) / 2
      max_length = len
    end
  end

  return s[start...(start + max_length)]
end

def expand_around_center(s, left, right)
  while left >= 0 && right < s.length && s[left] == s[right]
    left -= 1
    right += 1
  end

  return right - left - 1
end
