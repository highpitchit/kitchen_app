require "application_system_test_case"

class CakeBlogsTest < ApplicationSystemTestCase
  setup do
    @cake_blog = cake_blogs(:one)
  end

  test "visiting the index" do
    visit cake_blogs_url
    assert_selector "h1", text: "Cake Blogs"
  end

  test "creating a Cake blog" do
    visit cake_blogs_url
    click_on "New Cake Blog"

    fill_in "Body", with: @cake_blog.body
    fill_in "Title", with: @cake_blog.title
    fill_in "User", with: @cake_blog.user_id
    click_on "Create Cake blog"

    assert_text "Cake blog was successfully created"
    click_on "Back"
  end

  test "updating a Cake blog" do
    visit cake_blogs_url
    click_on "Edit", match: :first

    fill_in "Body", with: @cake_blog.body
    fill_in "Title", with: @cake_blog.title
    fill_in "User", with: @cake_blog.user_id
    click_on "Update Cake blog"

    assert_text "Cake blog was successfully updated"
    click_on "Back"
  end

  test "destroying a Cake blog" do
    visit cake_blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cake blog was successfully destroyed"
  end
end
