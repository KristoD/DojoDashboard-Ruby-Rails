class StudentsController < ApplicationController
  def new
    @dojo = Dojo.find(params[:dojo_id])
    render "new"
  end

  def create
    @dojo = Dojo.find(params[:dojo_id]).students.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], dojo_id: params[:dojo_id])
    redirect_to "/dojos/#{params[:dojo_id]}"
  end

  def show
    @dojo = Dojo.find(params[:dojo_id])
    @student = @dojo.students.find(params[:id])
    @mates = Student.where("dojo_id = #{@dojo.id}").where.not("id = #{@student.id}")
    render "show"
  end

  def edit
    @dojo = Dojo.find(params[:dojo_id])
    @student = Student.find(params[:id])
    render "edit"
  end

  def update
    Student.update(params[:id], first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
    redirect_to "/dojos/#{params[:dojo_id]}/students/#{params[:id]}"
  end

  def destroy
    Dojo.find(params[:dojo_id]).students.destroy(params[:id])
    redirect_to "/dojos/#{params[:dojo_id]}"
  end
end
