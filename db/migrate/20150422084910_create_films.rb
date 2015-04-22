class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.integer :year
      t.string  :slogan
      t.string  :title, null: false
      t.text    :description
      t.float   :rating
      t.timestamps null: false
    end
  end
end
