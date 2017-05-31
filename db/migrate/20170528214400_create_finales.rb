class CreateFinales < ActiveRecord::Migration[5.0]
  def change
    create_table :finales do |t|
      t.string :series
      t.float :viewership
      t.float :rating
      t.integer :share
      t.date :date
      t.string :network

      t.timestamps
    end
  end
end
