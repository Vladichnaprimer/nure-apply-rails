class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.user_score
    User.last.score.to_i
  end


  enum role: {
      admin: 0,
      visitor: 1
  }

  enum category: {
    schooler: "Випускник школи",
    college: "Випускник коледжу",
    bachelor: "Бакалавр",
    master: "Магістр",
    foreign: "Іноземний студент"
  }

end
