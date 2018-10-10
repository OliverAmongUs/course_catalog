# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
gem 'json'
gem 'activerecord-import'
# require './course.json'

coursefile = File.open('db/course.json').read
course_hash = JSON.parse(coursefile)

courseArray = []
columns_course = [:course_name, :course_description, :course_id]

course_hash.each do |line|
  courseArray << Course.new(course_name: line['name'], course_description: line['description'], course_id: line['code'])
end


subjectfile = File.open('db/subject.json').read
subject_hash = JSON.parse(subjectfile)

subjectArray = []
columns_subject = [:subject_name, :subject_abbr, :subject_id]

subject_hash.each do |line|
  subjectArray << Subject.new(subject_name: line['name'], subject_abbr: line['abbreviation'], subject_id: line['id'])
end


instructorfile = File.open('db/instructor.json').read
instructor_hash = JSON.parse(instructorfile)

instructorArray = []
columns_instructor = [:instructor_last, :instructor_first, :instructor_id, :instructor_email]

instructor_hash.each do |line|
  instructorArray << Instructor.new(instructor_last: line['last'], instructor_first: line['first'], instructor_email: line['email'], instructor_id: line['id'])
end



Course.import columns_course, courseArray
Subject.import columns_subject, subjectArray
Instructor.import columns_instructor, instructorArray
