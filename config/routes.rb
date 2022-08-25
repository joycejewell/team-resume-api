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
  get "/experience" => "experience#index"
  get "/experience/:id" => "experience#show"
  post "/experience" => "experience#create"
  patch "experience/:id" => "experience#update"
  delete "experience/:id" => "experience#destroy"

  #education
  get "/education" => "education#index"
  get "/education/:id" => "education#show"
  post "/education" => "education#create"
  patch "education/:id" => "education#update"
  delete "education/:id" => "education#destroy"

  #users
  post "/users" => "users#create"

  #sessions (login)
  post "/sessions" => "sessions#create"

end
