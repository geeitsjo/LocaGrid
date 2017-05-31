require 'test_helper'

class FeedControllerTest < ActionDispatch::IntegrationTest
  test "should get personal" do
    get feed_personal_url
    assert_response :success
  end

end
