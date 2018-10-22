class EnrollmentController < ApplicationController
  def create

    @enrollment = Enrollment.new(enrollment_params)
  end


  def new
    @e_course_id = params[:enroll_course_id]
    @e_user_id = session[:user_id]
    @enrollment = Enrollment.new(course_id:@e_course_id, user_id:@e_user_id)
    @enrollment.save
  end


  def show
  end

private

    def enrollment_params
      params.require(:enrollment).permit(:course_id, :user_id)
    end

end
