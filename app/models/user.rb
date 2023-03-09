class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 has_many :rooms
 has_many :reservations
 mount_uploader :image, ImageUploader

 validates :name, presence: true #追記
 validates :introduction, length: { maximum: 200 } #追記
end
