#!/usr/bin/env ruby

edges = {
  1 => {'a' => 2, 'b' => 2},
  2 => {'c' => 3, 'd' => 3},
  3 => {},
}

accepting = [2, 3]

def fsmsim(string, current, edges, accepting)
  return accepting.include? current if string.empty?

  letter = string[0]
  next_state = edges[current][letter]
  return false unless next_state

  fsmsim(string[1..-1], next_state, edges, accepting)
end

puts fsmsim("a", 1, edges, accepting)
puts fsmsim("b", 1, edges, accepting)
puts fsmsim("ac", 1, edges, accepting)
puts fsmsim("ad", 1, edges, accepting)
puts fsmsim("bc", 1, edges, accepting)
puts fsmsim("bd", 1, edges, accepting)
puts "should be all false downwards"
puts fsmsim("abc", 1, edges, accepting)
puts fsmsim("ada", 1, edges, accepting)
puts fsmsim("aaa111", 1, edges, accepting)
puts fsmsim("aba111", 1, edges, accepting)
