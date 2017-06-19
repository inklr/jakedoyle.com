require 'test_helper'

class HelloControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Jake Doyle - Web Developer"
  end

  test "should get index" do
    get root_path
    assert_response :success
    assert_select "title", @base_title
  end

  #TODO
  #test "should get bio" do
  #  get bio_path
  #  assert_response :success
  #  assert_select "title", "Bio | #{@base_title}"
  #end

  #TODO
  #test "should get blog" do
  #  get blog_path
  #  assert_response :success
  #  assert_select "title", "Blog | #{@base_title}"
  #end

  test "should get resume" do
    get resume_path
    assert_response :success
    assert_select "title", "Resume | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end
end
