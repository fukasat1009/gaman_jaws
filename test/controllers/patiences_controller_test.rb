require 'test_helper'

class PatiencesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get patiences_new_url
    assert_response :success
  end

  test "should get create" do
    get patiences_create_url
    assert_response :success
  end

  test "should get show" do
    get patiences_show_url
    assert_response :success
  end

  test "should get edit" do
    get patiences_edit_url
    assert_response :success
  end

  test "should get update" do
    get patiences_update_url
    assert_response :success
  end

end
