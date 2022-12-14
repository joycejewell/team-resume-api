class StudentsController < ApplicationController
  def index
    @students = Student.all
    render json: @students.as_json
  end

    # @students = students.order(:id => :desc)

  # def show
  #   @student = Student.find_by(id: params[:id])
  #   render json: @student.as_json
  # end

  def show
    @student = Student.find_by(id: params[:id])
    render json: @student.as_json(methods: [:skills, :experience, :education, :capstones])
  end
  
  def create
    student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      short_bio: params[:short_bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      personal_blog_url: params[:personal_blog_url],
      online_resume_url: params[:online_resume_url],
      github_url: params[:github_url],
      photo: params[:photo]
    )
    # student.save
    # render json: student.as_json
    if student.save
      render json: { message: "student created!" }, status: :created
    else
      render json: { errors: student.errors.full.messages }, status: :bad_request
    end
  end

  def destroy
    student_id = params[:id]
    student = Student.find_by(id: student_id)
    student.destroy
    render json: {message: "Deleted student"}
  end

  def update
    student_id = params["id"]
    student = Student.find_by(id:student_id)
    student.first_name = params[:first_name] || student.first_name
    student.last_name = params[:last_name] || student.last_name
    student.email = params[:email] || student.email
    student.phone_number = params[:phone_number] || student.phone_number
    student.short_bio = params[:short_bio] || student.short_bio
    student.linkedin_url = params[:linkedin_url] || student.linkedin_url
    student.twitter_handle = params[:twitter_handle] || student.twitter_handle
    student.personal_blog_url = params[:personal_blog_url] || student.personal_blog_url
    student.online_resume_url = params[:online_resume_url] || student.online_resume_url
    student.github_url = params[:github_url] || student.github_url
    student.photo = params[:photo] || student.photo

    if student.save
      render json: student.as_json
    else
      render json: {errors: student.error.full_messages}, status: 422
    end
  end

end
