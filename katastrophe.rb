def strong_enough( earthquake, age )
  strength = 1000
  age.times { |year| strength = strength - (strength*0.01)  }
  arr = []
  earthquake.each { |x| arr << x.reduce(:+) }
  result = 1
  arr.each  { |x| result *= x }

  return "Safe!" if result < strength
  return "Needs Reinforcement!"
end

strong_enough([[2,3,1],[3,1,1],[1,1,2]], 2)
strong_enough([[5,8,7],[3,3,1],[4,1,2]], 3)

