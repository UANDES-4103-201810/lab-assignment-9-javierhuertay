class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :duration
      t.string :description
      t.integer :director_id
      t.timestamp :relase_date
      t.integer :address_id

      t.timestamps
    end
  end
end
