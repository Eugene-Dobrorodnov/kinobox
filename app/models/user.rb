class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_many :favorite_films, dependent: :destroy
  has_many :films, through: :favorite_films

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
