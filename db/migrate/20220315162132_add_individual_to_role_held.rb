class AddIndividualToRoleHeld < ActiveRecord::Migration[6.1]
  def change
    add_reference :role_helds, :individual, foreign_key: true
  end
end
