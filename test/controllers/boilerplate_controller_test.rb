require 'test_helper'

class BoilerplateControllerTest < ActionDispatch::IntegrationTest
  test "should get header" do
    get boilerplate_header_url
    assert_response :success
  end

  test "should get footer" do
    get boilerplate_footer_url
    assert_response :success
  end

end
