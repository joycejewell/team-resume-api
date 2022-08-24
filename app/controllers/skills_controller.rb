class SkillsController < ApplicationController

  def index 
    @skills = Skill.all
    render json: @skills.as_json
  end 

  def show
    @skills = Skill.find_by(id: params[:id])
    render json: @skills.as_json
  end

  def create
    skill = Skill.new(
      student_id: params[:student_id],
      skills_name: params[:skills_name]
       )
    skill.save
    render json: skill.as_json
    # if skill.save
    #   render json: { message: "skill created!" }, status: :created
    # else
    #   render json: { errors: skill.errors.full.messages }, status: :bad_request
    # end
  end

  def update
    skills_id = params["id"]
    skill = Skill.find_by(id:skills_id)
    skill.student_id = params[:student_id] || skills.student_id
    skill.skills_name = params[:skills_name] || skills.skills_name

    if skill.save
      render json: skill.as_json
    else
      render json: {errors: skill.error.full_messages}, status: 422
    end
  end 

  def destroy
  end 

end
