class News < ActiveRecord::Base

    enum category: {
      schooler: "Випускникам шкіл",
      college: "Випускиникам коледжей",
      bachelor: "Бакалаврам",
      master: "Магістрам",
      foreign: "Іноземним студентам"
    }

end
