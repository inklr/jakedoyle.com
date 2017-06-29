require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @base_title = "Jake Doyle - Web Developer"
    @message = messages(:one)
  end

  test "should get new" do
    get new_message_url
    assert_response :success
    assert_select "title", "#{@base_title} | Contact"
  end

  test "should create message" do
    
  end
end
