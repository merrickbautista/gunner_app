class StudentsController < ApplicationController
  def new
  end

  def index
  	sort_column
  	@students = Student.order(params[:sort])
  end

  def show
    @student = Student.find(params[:id])
  end

  private
  	def sort_column
  		Student.column_names.include?(params[:sort]) ? params[:sort] : "last_name"
  	end
end
