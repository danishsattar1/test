class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:username]
  
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  
  private

  #method for overriding default database authentication
  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    where(conditions.to_h).first
  end

end
