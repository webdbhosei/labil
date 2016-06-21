class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :member_id
      t.integer :location_id

      t.timestamps null: false
    end
  end
end
