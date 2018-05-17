require 'test_helper'

class TubuyakisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tubuyaki = tubuyakis(:one)
  end

  test "should get index" do
    get tubuyakis_url
    assert_response :success
  end

  test "should get new" do
    get new_tubuyaki_url
    assert_response :success
  end

  test "should create tubuyaki" do
    assert_difference('Tubuyaki.count') do
      post tubuyakis_url, params: { tubuyaki: { content: @tubuyaki.content, user_id: @tubuyaki.user_id } }
    end

    assert_redirected_to tubuyaki_url(Tubuyaki.last)
  end

  test "should show tubuyaki" do
    get tubuyaki_url(@tubuyaki)
    assert_response :success
  end

  test "should get edit" do
    get edit_tubuyaki_url(@tubuyaki)
    assert_response :success
  end

  test "should update tubuyaki" do
    patch tubuyaki_url(@tubuyaki), params: { tubuyaki: { content: @tubuyaki.content, user_id: @tubuyaki.user_id } }
    assert_redirected_to tubuyaki_url(@tubuyaki)
  end

  test "should destroy tubuyaki" do
    assert_difference('Tubuyaki.count', -1) do
      delete tubuyaki_url(@tubuyaki)
    end

    assert_redirected_to tubuyakis_url
  end
end
