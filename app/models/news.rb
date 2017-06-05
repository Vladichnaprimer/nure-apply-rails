class News < ActiveRecord::Base

    enum category: {
      schooler: "Випускникам шкіл",
      college: "Випускникам коледжей",
      bachelor: "Бакалаврам",
      master: "Магістрам",
      foreign: "Іноземним студентам"
    }

end
