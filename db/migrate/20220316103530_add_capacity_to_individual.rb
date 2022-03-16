class AddCapacityToIndividual < ActiveRecord::Migration[6.1]
  def change
    add_column :individuals, :capacity, :string
  end
end
