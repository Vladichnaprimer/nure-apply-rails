class Rule < ActiveRecord::Base

  scope :schooler, -> { where(category: Rule.categories[:schooler]) }

  enum category: {
    schooler: "Школьникам",
    college: "Выпускиник колледжей",
    bachelor: "Бакалаврам",
    master: "Магистрам",
    foreign: "Иностранным студентам"
  }

end
