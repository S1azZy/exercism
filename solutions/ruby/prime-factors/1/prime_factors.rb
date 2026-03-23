=begin
Write your code for the 'Prime Factors' exercise in this file. Make the tests in
`prime_factors_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/prime-factors` directory.
=end
class PrimeFactors
  def self.of(n)
    return [] if n < 2

    2.upto(n / 2).each do |i|
      if n % i == 0
        return [i] + PrimeFactors.of(n / i)
      end
    end

    return [n]
  end
end
