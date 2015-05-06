class FavoriteFilm < ActiveRecord::Base

  belongs_to :film
  belongs_to :user

  validates_uniqueness_of :user_id, scope: :film_id
end
