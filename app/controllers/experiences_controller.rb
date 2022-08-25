class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render json: @experiences.as_json
  end

  def show
    @experience = Experience.find_by(id: params[:id])
    render json: @experience.as_json
  end

  def create
    experience = Experience.new(
      student_id: params[:student_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      company_name: params[:company_name],
      details: params[:details],
    )
    # experience.save
    # render json: experience.as_json
    if experience.save
      render json: { message: "experience created!" }, status: :created
    else
      render json: { errors: experience.errors.full.messages }, status: :bad_request
    end
  end

  def destroy
    experience_id = params[:id]
    experience = Experience.find_by(id: experience_id)
    experience.destroy
    render json: {message: "Deleted experience"}
  end

  def update
    experience_id = params["id"]
    experience = Experience.find_by(id:experience_id)
    experience.student_id = params[:student_id] || experience.student_id
    experience.start_date = params[:start_date] || experience.start_date
    experience.end_date = params[:end_date] || experience.end_date
    experience.company_name = params[:company_name] || experience.company_name
    experience.details = params[:details] || experience.details


    if experience.save
      render json: experience.as_json
    else
      render json: {errors: experience.error.full_messages}, status: 422
    end
  end
end
