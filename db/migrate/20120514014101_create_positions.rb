class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.integer :company_id
      t.integer :department_id

      t.timestamps
    end
    add_index :positions, :company_id
    add_index :positions, :department_id
  end
end
