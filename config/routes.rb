Rails.application.routes.draw do
  # students
  get "/students" => "students#index"
  get "students/:id" => "students#show" 
  post "/students" => "students#create"
  patch "/students/:id" => "students#update"
  delete "students/:id" => "students#destroy"

  #skills
  get "/skills" => "skills#index"
  get "/skills/:id" => "skills#show"
  post "/skills" => "skills#create"
  patch "skills/:id" => "skills#update"
  delete "skills/:id" => "skills#destroy"
  
  #experience
  get "/experiences" => "experiences#index"
  get "/experiences/:id" => "experiences#show"
  post "/experiences" => "experiences#create"
  patch "experiences/:id" => "experiences#update"
  delete "experiences/:id" => "experiences#destroy"

  #education
  get "/educations" => "educations#index"
  get "/educations/:id" => "educations#show"
  post "/educations" => "educations#create"
  patch "educations/:id" => "educations#update"
  delete "educations/:id" => "educations#destroy"

  #users
  post "/users" => "users#create"

  #sessions (login)
  post "/sessions" => "sessions#create"

end
