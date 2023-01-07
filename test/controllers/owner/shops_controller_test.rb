require "test_helper"

class Owner::ShopsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_shops_index_url
    assert_response :success
  end

  test "should get show" do
    get owner_shops_show_url
    assert_response :success
  end

  test "should get edit" do
    get owner_shops_edit_url
    assert_response :success
  end
end
