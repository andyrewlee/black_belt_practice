class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.references :user, index: true
      t.references :event, index: true

      t.timestamps
    end
  end
end
