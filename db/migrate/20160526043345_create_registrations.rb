class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :lab
      t.string :string

      t.timestamps null: false
    end
  end
end
