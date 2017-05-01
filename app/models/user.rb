class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  enum role: {
      admin: 0,
      visitor: 1
  }

  enum category: {
    schooler: 1,
    college: 2,
    master: 3,
    aspirant: 4,
    foreign: 5
  }

end
