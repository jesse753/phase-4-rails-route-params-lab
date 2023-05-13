class StudentsController < ApplicationController

  def index
    @students = if params[:q]
      Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{params[:q]}%", "%#{params[:q]}%")
    else
      Student.all
    end

    render json: @students
  end
  end

  def show
    @student = Student.find(params[:id])
    render json: @student
  end
end
