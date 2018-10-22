require 'test_helper'

class EnrollmentControllerTest < ActionDispatch::IntegrationTest
  test "should get user_id:string" do
    get enrollment_user_id:string_url
    assert_response :success
  end

  test "should get course_id:string" do
    get enrollment_course_id:string_url
    assert_response :success
  end

end
