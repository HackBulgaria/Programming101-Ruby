<<SUMMARY
* Какво правихме предния път?
* Всяка функция връща резултат!
* Последния израз във функция е нейният резултат!
* Има и return
* Всичко е обект
* Всичко е еxpression (идва от LISP)
SUMMARY

<<TODAY
В Java всичко е обект*

* Освен примитивните типове и String**
** Относно String–а в Java ...
* Java -> примитивни и референтни типове

int a = 5;
String b = "Java";

* Идеята, че всичко е обект
Какво е обект?

Обект = поведение, характеристики.
Обект = състояние, поведение(методи!)

TODAY

def fact(n)
  if n == 0
    1
  else
    n * fact(n - 1)
  end
end

def chars(str)
  result = []

  i = 0, n = str.length

  while i < n do
    result.push(str[i])
    i = i.next
  end

  result
end

def anagrams?(a, b)
  a.chars.sort == b.chars.sort
end

def hack?(n)
  n = n.to_s 2
  n.reverse == n and n.count('1').odd?
end

def next_hack(n)
  n = n.next

  until hack? n do
    n = n.next
  end

  n
end

def sum_digits(n)
  digits = n.to_s.chars
  result, index = 0, 0

  while index < digits.length do
    result += digits[index].to_i
    index += 1
  end

  result
end

def balanced?(n)
  n = n.to_s
  mid = n.length / 2

  left_part = n.slice(0, mid)
  right_part = n.slice(mid + n.length % 2, n.length)

  sum_digits(left_part.to_i) ==
  sum_digits(right_part.to_i)
end

def zero_insert(n)
  result = ""
  index, n = 0, n.to_s

  while index < n.length - 1
    a, b = n[index].to_i, n[index + 1].to_i

    result += a.to_s
    result += '0' if a == b or (a + b) % 10 == 0

    index += 1
  end

  result += n[index]
  result
end

def number_to_digits(n)
  result = []

  while n != 0
    result.push(n % 10)
    n = n / 10
  end

  result.reverse
end

def number_to_digits_r(n)
  return [n] if n < 10
  number_to_digits_r(n / 10).push(n % 10)
end

def digits_to_number(digits)
  index, result = 0, 0

  while index < digits.length
    result = result * 10 + digits[index]
    index = index.next
  end

  result
end

def greyscale_histogram(image)
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

image = [[0, 0, 0, 0, 0],
         [111, 255, 0, 0, 111],
         [100, 100, 100, 100, 100],
         [1, 1, 1, 1, 1],
         [3, 3, 5, 6, 9]]

result = greyscale_histogram image
p result[0]
p result[1]
p result[3]
p result[5]
p result[6]
p result[9]
p result[100]
p result[111]
p result[255]
