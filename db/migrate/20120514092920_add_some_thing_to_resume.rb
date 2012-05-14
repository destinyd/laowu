class AddSomeThingToResume < ActiveRecord::Migration
  def change
    add_column :resumes, :is_conceal, :boolean
    add_index :resumes, :is_conceal
    add_column :resumes, :is_newest, :boolean
    add_index :resumes, :is_newest
  end
end
