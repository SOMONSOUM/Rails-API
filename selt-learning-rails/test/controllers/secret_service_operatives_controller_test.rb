require 'test_helper'

class SecretServiceOperativesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get secret_service_operatives_index_url
    assert_response :success
  end

  test "should get new" do
    get secret_service_operatives_new_url
    assert_response :success
  end

  test "should get create" do
    get secret_service_operatives_create_url
    assert_response :success
  end

  test "should get show" do
    get secret_service_operatives_show_url
    assert_response :success
  end

  test "should get edit" do
    get secret_service_operatives_edit_url
    assert_response :success
  end

  test "should get update" do
    get secret_service_operatives_update_url
    assert_response :success
  end

  test "should get destroy" do
    get secret_service_operatives_destroy_url
    assert_response :success
  end

end
