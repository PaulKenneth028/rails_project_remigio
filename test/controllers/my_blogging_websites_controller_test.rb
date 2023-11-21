require "test_helper"

class MyBloggingWebsitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_blogging_website = my_blogging_websites(:one)
  end

  test "should get index" do
    get my_blogging_websites_url
    assert_response :success
  end

  test "should get new" do
    get new_my_blogging_website_url
    assert_response :success
  end

  test "should create my_blogging_website" do
    assert_difference("MyBloggingWebsite.count") do
      post my_blogging_websites_url, params: { my_blogging_website: {  } }
    end

    assert_redirected_to my_blogging_website_url(MyBloggingWebsite.last)
  end

  test "should show my_blogging_website" do
    get my_blogging_website_url(@my_blogging_website)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_blogging_website_url(@my_blogging_website)
    assert_response :success
  end

  test "should update my_blogging_website" do
    patch my_blogging_website_url(@my_blogging_website), params: { my_blogging_website: {  } }
    assert_redirected_to my_blogging_website_url(@my_blogging_website)
  end

  test "should destroy my_blogging_website" do
    assert_difference("MyBloggingWebsite.count", -1) do
      delete my_blogging_website_url(@my_blogging_website)
    end

    assert_redirected_to my_blogging_websites_url
  end
end
