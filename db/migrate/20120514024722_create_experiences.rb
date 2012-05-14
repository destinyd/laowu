class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.decimal :salary, :precision => 12, :scale => 2
      t.datetime :started_at
      t.datetime :finished_at
      t.integer :user_id
      t.integer :company_id
      t.integer :position_id

      t.timestamps
    end
    add_index :experiences, :started_at
    add_index :experiences, :finished_at
    add_index :experiences, :user_id
    add_index :experiences, :company_id
    add_index :experiences, :position_id
  end
end
