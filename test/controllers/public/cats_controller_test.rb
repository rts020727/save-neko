require "test_helper"

class Public::CatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_cats_index_url
    assert_response :success
  end

  test "should get show" do
    get public_cats_show_url
    assert_response :success
  end
end
