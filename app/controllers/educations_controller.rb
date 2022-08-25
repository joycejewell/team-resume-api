class EducationsController < ApplicationController
  def index
    @educations = Education.all
    render json: @educations.as_json
  end

  def show
    @education = education.find_by(id: params[:id])
    render json: @education.as_json
  end

  def create
    education = Education.new(
      student_id: params[:student_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university_name],
      details: params[:details],
    )
    # education.save
    # render json: education.as_json
    if education.save
      render json: { message: "education created!" }, status: :created
    else
      render json: { errors: education.errors.full.messages }, status: :bad_request
    end
  end

  def destroy
    education_id = params[:id]
    education = Education.find_by(id: education_id)
    education.destroy
    render json: {message: "Deleted education"}
  end

  def update
    educations_id = params["id"]
    education = Education.find_by(id:educations_id)
    education.student_id = params[:student_id] || education.student_id
    education.start_date = params[:start_date] || education.start_date
    education.end_date = params[:end_date] || education.end_date
    education.degree = params[:degree] || education.degree
    education.university_name = params[:university_name] || education.university_name
    education.details = params[:details] || education.details


    if education.save
      render json: education.as_json
    else
      render json: {errors: education.error.full_messages}, status: 422
    end
  end
end
