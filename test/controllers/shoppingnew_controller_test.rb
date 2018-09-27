require 'test_helper'

class ShoppingnewControllerTest < ActionDispatch::IntegrationTest
  test "should get creste" do
    get shoppingnew_creste_url
    assert_response :success
  end

  test "should get edit" do
    get shoppingnew_edit_url
    assert_response :success
  end

  test "should get update" do
    get shoppingnew_update_url
    assert_response :success
  end

  test "should get destroyer" do
    get shoppingnew_destroyer_url
    assert_response :success
  end

end
