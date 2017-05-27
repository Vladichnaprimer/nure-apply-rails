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
    schooler: "Випускиник школи",
    college: "Випускиник коледжу",
    bachelor: "Бакалавр",
    master: "Магістр",
    foreign: "Іноземний студент"
  }

end
