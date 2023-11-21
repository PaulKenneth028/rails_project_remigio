require "application_system_test_case"

class MyBloggingWebsitesTest < ApplicationSystemTestCase
  setup do
    @my_blogging_website = my_blogging_websites(:one)
  end

  test "visiting the index" do
    visit my_blogging_websites_url
    assert_selector "h1", text: "My blogging websites"
  end

  test "should create my blogging website" do
    visit my_blogging_websites_url
    click_on "New my blogging website"

    click_on "Create My blogging website"

    assert_text "My blogging website was successfully created"
    click_on "Back"
  end

  test "should update My blogging website" do
    visit my_blogging_website_url(@my_blogging_website)
    click_on "Edit this my blogging website", match: :first

    click_on "Update My blogging website"

    assert_text "My blogging website was successfully updated"
    click_on "Back"
  end

  test "should destroy My blogging website" do
    visit my_blogging_website_url(@my_blogging_website)
    click_on "Destroy this my blogging website", match: :first

    assert_text "My blogging website was successfully destroyed"
  end
end
