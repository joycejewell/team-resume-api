Student.create!(first_name: "DJ Jazzy", last_name: "Jones", email: "djj@gmail.com", phone_number: "1234567890", short_bio: "I spin vinyl", linkedin_url: "a", twitter_handle: "a", personal_blog_url: "a", online_resume_url: "a", github_url: "a", photo: "a")

Student.create!(first_name: "test 2", last_name: "test 2", email: "", phone_number: "", short_bio: "", linkedin_url: "", twitter_handle: "", personal_blog_url: "", online_resume_url: "", github_url: "", photo: "")

Skill.create!(student_id: 2, skills_name: "Test Ruby")
Skill.create!(student_id: 3, skills_name: "html")
Skill.create!(student_id: 4, skills_name: "teaching")
