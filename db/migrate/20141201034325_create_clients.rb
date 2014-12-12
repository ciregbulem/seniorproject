class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :city
      t.string :state
      t.timestamps
    end
  end
end
