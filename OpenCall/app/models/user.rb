class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :email, :password, :password_confirmation, :user_preference_attributes       
  has_one :user_preference
  
  before_create :build_user_preference
  before_destroy :destroy_user_preference
  accepts_nested_attributes_for :user_preference		         

  private
  
  def destroy_user_preference
  	me = self.user_preference 
  	me.destroy 
  end

end
