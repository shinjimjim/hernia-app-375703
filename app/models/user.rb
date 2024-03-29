class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :password,
            format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: "が入力されていません。" }

  
  validates :name, presence: true

  has_many :events, dependent: :destroy

  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
end
