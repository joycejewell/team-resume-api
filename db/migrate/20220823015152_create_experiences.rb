class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :student_id
      t.string :start_date
      t.string :end_date
      t.string :company_name
      t.string :details

      t.timestamps
    end
  end
end
