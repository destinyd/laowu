class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :company_id
      t.integer :position_id
      t.integer :user_id
      t.integer :status_id
      t.decimal :salary, :precision => 12, :scale => 2
      t.datetime :finished_at

      t.timestamps
    end
    add_index :offers, :company_id
    add_index :offers, :position_id
    add_index :offers, :user_id
    add_index :offers, :status_id
  end
end
