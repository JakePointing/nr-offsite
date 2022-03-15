class AddAnonymousNameToIndividual < ActiveRecord::Migration[6.1]
  def change
    add_column :individuals, :anonzmous_name, :string
    change_column :individuals, :description, :text
  end
end
