def number_to_digits(n)
  n.to_s.chars.map(&:to_i)
end

def digits_to_number(digits)
  digits.reduce(0) { |a, e| a * 10 + e }
end

def max_scalar_product(v1, v2)
  v1 = v1.sort
  v2 = v2.sort

  v1.each_with_index
    .map { |x, i| x * v2[i] }
    .reduce(&:+)
end

def sum_matrix(m)
  m.map { |row| row.reduce(&:+) }.reduce(&:+)
end

def grayscale_histogram(image)
  histogram = Array.new 256, 0

  row_index, col_index = 0, 0

  while row_index < image.length
    col_index = 0

    while col_index < image[row_index].length
      pixel_value = image[row_index][col_index]
      histogram[pixel_value] += 1
      col_index += 1
    end

    row_index += 1
  end

  histogram
end

def max_span(items)

end

def matrix_bombing_plan(m)

end
