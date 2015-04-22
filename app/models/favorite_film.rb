class FavoriteFilm < ActiveRecord::Base
  validates_uniqueness_of :user_id, scope: :film_id
end
