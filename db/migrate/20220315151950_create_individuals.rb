class CreateIndividuals < ActiveRecord::Migration[6.1]
  def change
    create_table :individuals do |t|
      t.string :name
      t.string :title
      t.string :location
      t.string :description

      t.timestamps
    end
  end
end
