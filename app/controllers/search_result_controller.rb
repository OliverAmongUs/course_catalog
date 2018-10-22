class SearchResultController < ApplicationController
  def new
    @Allcourses = Course.all

    if !params[:search].empty? && !params[:subject].empty?
      @selected_courses = CourseSubject.where({course_name: params[:search], subject_code: params[:subject]})

    elsif params[:subject] || params[:search]
        if params[:subject].empty?
          @selected_courses = CourseSubject.where({course_name: params[:search]})
          # byebug
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



  end

  def index

  end
end
