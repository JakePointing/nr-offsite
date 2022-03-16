class AddPermissionToIndividual < ActiveRecord::Migration[6.1]
  def change
    add_column :individuals, :permission, :boolean, default: false
  end
end
