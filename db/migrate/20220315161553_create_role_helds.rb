class CreateRoleHelds < ActiveRecord::Migration[6.1]
  def change
    create_table :role_helds do |t|
      t.date :start_date
      t.date :end_date
      t.string :organisation
      t.string :position
      t.string :sector
      t.integer :size
      t.string :ownership

      t.timestamps
    end
  end
end
