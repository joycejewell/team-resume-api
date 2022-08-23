class Student < ApplicationRecord
  has_many: experience
  has_many: education
  has_many: skills
  has_many: capstone
end
