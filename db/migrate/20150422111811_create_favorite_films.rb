class CreateFavoriteFilms < ActiveRecord::Migration
  def change
    create_table :favorite_films do |t|
      t.references :user, index: true
      t.references :film, index: true

      t.timestamps null: false
    end
  end
end
