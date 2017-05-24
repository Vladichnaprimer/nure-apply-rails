class Rule < ActiveRecord::Base

  scope :schooler, -> { where(category: Rule.categories[:schooler]) }
  scope :college, -> { where(category: Rule.categories[:college]) }
  scope :bachelor, -> { where(category: Rule.categories[:bachelor]) }
  scope :master, -> { where(category: Rule.categories[:master]) }
  scope :foreign, -> { where(category: Rule.categories[:foreign]) }

  enum category: {
    schooler: "Школьникам",
    college: "Выпускиник колледжей",
    bachelor: "Бакалаврам",
    master: "Магистрам",
    foreign: "Иностранным студентам"
  }

end
