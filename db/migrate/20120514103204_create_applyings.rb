class CreateApplyings < ActiveRecord::Migration
  def change
    create_table :applyings do |t|
      t.integer :user_id
      t.integer :job_id
      t.integer :resume_id
      t.datetime :view_at

      t.timestamps
    end
    add_index :applyings, :user_id
    add_index :applyings, :job_id
    add_index :applyings, :resume_id
  end
end
