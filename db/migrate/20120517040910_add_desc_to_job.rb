class AddDescToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :desc, :text
  end
end
