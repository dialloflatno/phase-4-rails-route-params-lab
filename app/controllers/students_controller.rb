class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show
    id = Student.find_by(id: params[:id])
    render json: id
  end
end
