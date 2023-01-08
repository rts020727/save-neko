require "test_helper"

class Owner::CatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get owner_cats_index_url
    assert_response :success
  end

  test "should get show" do
    get owner_cats_show_url
    assert_response :success
  end

  test "should get edit" do
    get owner_cats_edit_url
    assert_response :success
  end
end
