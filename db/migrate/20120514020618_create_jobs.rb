class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.decimal :salary_min, :precision => 12, :scale => 2
      t.decimal :salary_max, :precision => 12, :scale => 2
      t.datetime :finished_at
      t.integer :company_id
      t.integer :position_id

      t.timestamps
    end
    add_index :jobs, :salary_min
    add_index :jobs, :salary_max
    add_index :jobs, :finished_at
    add_index :jobs, :company_id
    add_index :jobs, :position_id
  end
end
