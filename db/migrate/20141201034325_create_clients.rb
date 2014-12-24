class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :fname, null: false, default: ""
      t.string :lname, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :city
      t.string :state
      t.timestamps
    end
  end
end
