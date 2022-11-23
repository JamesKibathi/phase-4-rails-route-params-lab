class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end
 

  def show
    student=Student.find(params[:id])
    render json: student
  end

  def grades
   grades=Student.all
   render json: grades, only: [:grade]
  end

  def highest_grade
    highest=Student.order("grade DESC").first
    render json: highest
  end

end
