require_relative 'solution'

def main
  p = Polynomial.parse(ARGV[0])
  puts p.derivate.to_s
end

main
