class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :posts
      validates :nickname, uniqueness: true
      validates :nickname, length: { maximum: 10 }
      validates :nickname, presence:true
end
