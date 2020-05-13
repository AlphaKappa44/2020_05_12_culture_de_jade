class User < ApplicationRecord
       # welcome email after sign up
  after_create :welcome_send

  def welcome_send
    UserMailer.welcome_email(self).deliver_now
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #after_create :welcome_send

  #def welcome_send
  #  UserMailer.welcome_email(self).deliver_now
  #end

  # Un utilisateur peut participer à plusieurs événements au travers 
  # des participations.
  has_many :attendances
  has_many :events, through: :attendances 

  # Un utilisateur peut administrer plusieurs événements.
  has_many :events, foreign_key: 'author_id', class_name: 'Event'


  #validates :email, #voir si conflit avec la gem authentification
  #          uniqueness: true,
   #         format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: 'Veuillez saisir une adresse email au format valide' },
    #        presence: true,
     #       length: { maximum: 256 }

 # validates :encrypted_password, #voir si conflit avec la gem authentification
  #          presence: true,
   #         length: { minimum: 6 }

  #validates :description,
   #         presence: true,
    #        length: { in: 10..500 }

  #validates :first_name,
   #         presence: true,
    #        length: { in: 2..30 }

  #validates :last_name,
   #         presence: true,
    #        length: { in: 2..30 }
   #end
end 

