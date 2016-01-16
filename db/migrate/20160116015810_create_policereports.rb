class CreatePolicereports < ActiveRecord::Migration
  def change
    create_table :policereports do |t|
      t.string :description
      t.string :city
      t.string :state
      t.string :phonenumber
      t.string :name

      t.timestamps null: false
    end
  end
end
