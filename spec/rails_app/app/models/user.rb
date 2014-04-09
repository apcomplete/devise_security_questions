class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :security_question_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
