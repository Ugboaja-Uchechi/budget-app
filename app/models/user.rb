class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable
  has_many :groups, dependent: :destroy
  has_many :entities, dependent: :destroy

  validates :name, presence: true
end
