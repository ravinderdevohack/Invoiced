require "test_helper"

class V1::OrganizationControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get v1_organization_create_url
    assert_response :success
  end

  test "should get update" do
    get v1_organization_update_url
    assert_response :success
  end

  test "should get destroy" do
    get v1_organization_destroy_url
    assert_response :success
  end
end
