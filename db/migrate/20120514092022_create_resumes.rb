class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :name
      t.boolean :is_public
      t.integer :user_id

      t.timestamps
    end
    add_index :resumes, :is_public
    add_index :resumes, :user_id
  end
end
