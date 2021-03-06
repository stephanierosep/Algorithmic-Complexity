def reverse_order(array)
  reversed = []
  until array.length == 0
    number = array.pop
    reversed << number
  end
  return reversed
end


counter = 1
rangemin = 0
RANGEMAX = 100000
while rangemin != RANGEMAX
  rangemin = rangemin + 5000
  results = []
  counter = 1
  # puts "next array #{rangemin}"


  while counter <= 15

    # setup
    array = []
    range = (1..rangemin)
    range.each do |n|
      array.push(n)
    end

    start = Time.now
    #  code to test
    reverse_order(array)

    finish = Time.now

    # storing results
    result = finish - start
    counter += 1
    results << result
  end

  avg = results.sum / results.length
  # median
  median = results.sort[6]
  puts "#{rangemin}\t#{avg}\t#{median}"

end
