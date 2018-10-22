require 'test_helper'

class SearchResultControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get search_result_new_url
    assert_response :success
  end

end
