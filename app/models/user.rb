class User < ApplicationRecord
  has_one_attached :image

  has_many :books, dependent: :destroy
  def get_image
    (image.attached?) ? image : 'no_image.jpg'
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
