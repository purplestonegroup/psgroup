require 'test_helper'

class ContentsControllerTest < ActionController::TestCase
  test "should get investment" do
    get :investment
    assert_response :success
  end

  test "should get partner" do
    get :partner
    assert_response :success
  end

  test "should get companies" do
    get :companies
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get sitemap" do
    get :sitemap
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

  test "should get privacy" do
    get :privacy
    assert_response :success
  end

end
