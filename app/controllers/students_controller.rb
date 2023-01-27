class StudentsController < ApplicationController

  def index
    # students = Student.all
    students = params[:name] ? Student.filter_by_name(params[:name]) : Student.all
    render json: students

  end

  def student
    student = Student.find(params[:id])
    # searched_student = Student.filter_by_name(params[:name])
    render json: student
  end

  # def name_search
  #   searched_student = Student.all.filter_by_name(params[:search])
  #   byebug
  #   render json: searched_student
  # end
end
