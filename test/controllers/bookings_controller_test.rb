require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get user:references" do
    get bookings_user:references_url
    assert_response :success
  end

  test "should get toilet:references" do
    get bookings_toilet:references_url
    assert_response :success
  end

end
