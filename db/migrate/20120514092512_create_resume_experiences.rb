class CreateResumeExperiences < ActiveRecord::Migration
  def change
    create_table :resume_experiences do |t|
      t.integer :resume_id
      t.integer :experience_id

      t.timestamps
    end
    add_index :resume_experiences, :resume_id
    add_index :resume_experiences, :experience_id
  end
end
