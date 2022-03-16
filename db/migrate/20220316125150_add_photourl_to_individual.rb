class AddPhotourlToIndividual < ActiveRecord::Migration[6.1]
  def change
    add_column :individuals, :photo_url, :string
  end
end
