class CreateAuditions < ActiveRecord::Migration
  def change
    create_table :auditions do |t|
      t.datetime :at
      t.integer :user_id
      t.integer :company_id
      t.integer :position_id
      t.text :remark
      t.text :reply
      t.integer :status_id

      t.timestamps
    end
    add_index :auditions, :user_id
    add_index :auditions, :company_id
    add_index :auditions, :position_id
    add_index :auditions, :status_id
  end
end
