class StudentsController < ApplicationController
  # def index
  #   @students = Student.all
  #   if params[:search]
  #     @students = students.where("first_name ILIKE ?", "%#{params[:search]}%")
  #   end
  # end

    # @students = students.order(:id => :desc)

  def show
    @student = Student.find_by(id: params[:id])
    render template: "students/index"
  end

  # def create
  #   student = Student.new(
  #     first_name: params[:first_name],
  #     last_name: params[:last_name],
  #     email: params[:email],
  #     phone_number: params[:phone_number],
  #     short_bio: params[:short_bio],
  #     linkedin_url: params[:linkedin_url],
  #     twitter_handle: params[:twitter_handle],
  #     personal_blog_url: params[:personal_blog_url],
  #     online_resume_url: params[:online_resume_url],
  #     github_url: params[:github_url],
  #     photo: params[:photo]
  #   )

  #   if student.save
  #     render json: { message: "student created!" }, status: :created
  #   else
  #     render json: { errors: student.errors.full.messages }, status: :bad_request
  # end

  # # def update
  # # end

  # # def destroy
  # # end

end
