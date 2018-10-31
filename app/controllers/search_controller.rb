class SearchController < ApplicationController

  def new
    respond_to do |format|
      format.html
      format.js
    end
    @Allcourses = Course.all
    params[:search] = '' if params[:search].nil? || params[:search].empty?
    params[:subject] = '' if params[:subject].nil? || params[:subject].empty?

    if params[:search] == '' && params[:subject] == ''
      @result = nil;
    else
      if !params[:search].empty? && !params[:subject].empty?
        @selected_courses = CourseSubject.where(["LOWER (course_name) LIKE ? and subject_code = ?", "%#{params[:search]}%", "#{params[:subject]}"])

      elsif params[:subject] || params[:search]
          if params[:subject].empty?
            @selected_courses = CourseSubject.where("LOWER (course_name) LIKE ?", "%#{params[:search]}%")
            #byebug
          elsif params[:search].empty?
            @selected_courses = CourseSubject.where({subject_code: params[:subject]})
          end
      else
        @selected_courses = nil
      end

      @result = []
      if @selected_courses != nil
        @selected_courses.each do |course|
          @Allcourses.each do |base|
            if course.course_name == base.course_name && course.subject_code == base['foreign_id']
              @result.push(base)
            end
          end
        end

      end

      # responds_to :js,:html

    end



  end


  def show

  end
end
