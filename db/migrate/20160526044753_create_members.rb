class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name.string

      t.timestamps null: false
    end
  end
end
