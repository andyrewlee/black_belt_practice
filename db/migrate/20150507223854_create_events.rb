class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_date
      t.string :city
      t.string :state
      t.references :user, index: true

      t.timestamps
    end
  end
end
