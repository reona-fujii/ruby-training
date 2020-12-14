require 'minitest/autorun'

class SampleTest < MiniTest::Test
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end
end