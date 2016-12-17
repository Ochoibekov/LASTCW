require 'test_helper'

class OrgcommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @orgcomment = orgcomments(:one)
  end

  test "should get index" do
    get orgcomments_url
    assert_response :success
  end

  test "should get new" do
    get new_orgcomment_url
    assert_response :success
  end

  test "should create orgcomment" do
    assert_difference('Orgcomment.count') do
      post orgcomments_url, params: { orgcomment: { title: @orgcomment.title } }
    end

    assert_redirected_to orgcomment_url(Orgcomment.last)
  end

  test "should show orgcomment" do
    get orgcomment_url(@orgcomment)
    assert_response :success
  end

  test "should get edit" do
    get edit_orgcomment_url(@orgcomment)
    assert_response :success
  end

  test "should update orgcomment" do
    patch orgcomment_url(@orgcomment), params: { orgcomment: { title: @orgcomment.title } }
    assert_redirected_to orgcomment_url(@orgcomment)
  end

  test "should destroy orgcomment" do
    assert_difference('Orgcomment.count', -1) do
      delete orgcomment_url(@orgcomment)
    end

    assert_redirected_to orgcomments_url
  end
end
