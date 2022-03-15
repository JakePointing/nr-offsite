class AddIndividualIdToIndividual < ActiveRecord::Migration[6.1]
  def change
    add_column :individuals, :individual_id, :string
    add_column :individuals, :read_key, :string
    add_column :individuals, :write_key, :string
  end
end
