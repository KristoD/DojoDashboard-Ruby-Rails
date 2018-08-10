class DojoController < ApplicationController
  def index
    @dojos = Dojo.all
    render "index"
  end

  def new
    render "new"
  end

  def show
    @dojo = Dojo.find(params[:id])
    render "show"
  end

  def edit
    @dojo = Dojo.find(params[:id])
    render "edit"
  end

  def create
    @dojo = Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    puts @dojo
    redirect_to "/"
  end

  def update
    @dojo = Dojo.update(params[:id], branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
    redirect_to "/dojos/#{@dojo.id}"
  end

  def destroy
    Dojo.destroy(params[:id])
    redirect_to "/dojos"
  end


end
