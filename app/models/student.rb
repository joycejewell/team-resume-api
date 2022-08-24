class Student < ApplicationRecord
  has_many :experience
  has_many :education
  has_many :skills
  has_many :capstone
end


#launch server to test data to see if it works and then continue crudding student controller