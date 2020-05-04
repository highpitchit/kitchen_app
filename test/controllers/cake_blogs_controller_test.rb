require 'test_helper'

class CakeBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cake_blog = cake_blogs(:one)
  end

  test "should get index" do
    get cake_blogs_url
    assert_response :success
  end

  test "should get new" do
    get new_cake_blog_url
    assert_response :success
  end

  test "should create cake_blog" do
    assert_difference('CakeBlog.count') do
      post cake_blogs_url, params: { cake_blog: { body: @cake_blog.body, title: @cake_blog.title, user_id: @cake_blog.user_id } }
    end

    assert_redirected_to cake_blog_url(CakeBlog.last)
  end

  test "should show cake_blog" do
    get cake_blog_url(@cake_blog)
    assert_response :success
  end

  test "should get edit" do
    get edit_cake_blog_url(@cake_blog)
    assert_response :success
  end

  test "should update cake_blog" do
    patch cake_blog_url(@cake_blog), params: { cake_blog: { body: @cake_blog.body, title: @cake_blog.title, user_id: @cake_blog.user_id } }
    assert_redirected_to cake_blog_url(@cake_blog)
  end

  test "should destroy cake_blog" do
    assert_difference('CakeBlog.count', -1) do
      delete cake_blog_url(@cake_blog)
    end

    assert_redirected_to cake_blogs_url
  end
end
