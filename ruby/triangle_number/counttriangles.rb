#! /usr/bin/env ruby

$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'triangle_number.rb'


tn = TriangleNumber.new()
count = 0

File.open('words.txt').each{ |line|
  line.split(",").each { |word|
    if tn.is_triangle_word(word.gsub('"',''))
      count = count + 1
    end
  }
}

puts count
