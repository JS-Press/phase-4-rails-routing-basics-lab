class StudentsController < ApplicationController

def index 
    allofem = Student.all
    render json: allofem
end

def grades 
    grades = Student.all.order(grade: :desc)
    render json: grades
end 

def highest_grade 
    hg = Student.all.order(grade: :desc).first
    render json: hg
end

end
