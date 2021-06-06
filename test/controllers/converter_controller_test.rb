require "test_helper"

class ConverterControllerTest < ActionDispatch::IntegrationTest
  test "should get api" do
    get converter_api_url
    assert_response :success
  end
end
