class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :company_name
  belongs_to :right
  has_many :samples
  has_many :potential_clients
  has_many :containers

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :company_name, presence: true
  validates :right, presence: true

end
