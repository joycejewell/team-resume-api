class CapstonesController < ApplicationController

  def index
    @capstones = Capstone.all
    render json: @capstones.as_json
  end

  def show
    @capstones = Capstone.find_by(id: params[:id])
    render json: @capstones.as_json
  end 

  def create
    capstone = Capstone.new(
      student_id:params[:student_id],
      name: params[:name],
      description: params[:description],
      url: params[:url],
      screenshot: params[:screenshot]
    )
    capstone.save
    render json: capstone.as_json
  end 

  def update
    capstones_id = params["id"]
    capstone = Capstone.find_by(id: capstones_id)
    capstone.student_id = params[:student_id] || capstone.student_id
    capstone.name = params[:name] || capstone.name
    capstone.description = params[:description] || capstone.description
    capstone.url = params[:url] || capstone.url
    capstone.screenshot = params[:screenshot] || capstone.screenshot

    if capstone.save
      render json: capstone.as_json
    else
      render json: {errors: capstone.errors.full_messages}, status: 422
    end
  end 

  def destroy
    capstone_id = params["id"]
    capstone = Capstone.find_by(id: capstone_id)
    capstone.destroy
    render json: {message: "deleted capstone"}
  end 

end
