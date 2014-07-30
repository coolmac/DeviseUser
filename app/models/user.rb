class User < ActiveRecord::Base

  mount_uploader :photo, PhotoUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  #validates_presence_of   :photo
  #validates_integrity_of  :photo
  #validates_processing_of :photo

validates_presence_of :first_name, :last_name, :date_of_birth












end
