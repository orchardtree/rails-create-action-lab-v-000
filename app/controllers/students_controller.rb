class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    binding.pry
    @student = Student.new
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    #new_student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    #redirect_to student_path
  end
end
