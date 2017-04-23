class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :team #, optional: true
  has_many :objectives, dependent: :destroy
  belongs_to :mentor, class_name: "User", optional: true, dependent: :destroy
  has_many :badges
end
