# frozen_string_literal: true

require 'test_helper'

class GeocodeServiceTest < ActiveSupport::TestCase

  test "should retun address details of valid user input" do
    address = 'Ahmedabad'
    geocode = GeocodeService.call(address)
    assert_in_delta 23.0216238, geocode.latitude, 0.1
    assert_in_delta 72.5797068, geocode.longitude, 0.1
    assert_equal 'in', geocode.country_code
    assert_equal '380001', geocode.postal_code
  end
end
