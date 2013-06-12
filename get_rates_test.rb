require "minitest/autorun"
require_relative "./get_rates"


class TestGetRates < MiniTest::Unit::TestCase

    def test_page
        assert_equal("http://www.x-rates.com/table/?from=CAD&amount=1.00",page)
    end
end
