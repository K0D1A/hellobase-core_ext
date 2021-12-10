require 'test_helper'

class DivideByZeroFixTest < Minitest::Test
  {
    int_pos: 1,
    int_neg: -1,
    dec_pos: BigDecimal('1.0'),
    dec_neg: BigDecimal('-1.0'),
  }.each do |val_desc, val|
    {
      int_zero: 0,
      dec_zero: BigDecimal('0.0'),
    }.each do |zero_desc, zero|
      define_method :"test_#{val_desc}_divide_by_#{zero_desc}" do
        assert (val / zero).nan?
      end
    end
  end
end
