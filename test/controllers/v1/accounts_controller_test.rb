require "test_helper"

class V1::AccountsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get v1_accounts_create_url
    assert_response :success
  end

  test "should get update" do
    get v1_accounts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get v1_accounts_destroy_url
    assert_response :success
  end
end
