class Rule < ActiveRecord::Base

  enum category: {
    schooler: 1,
    college: 2,
    bachelor: 3,
    master: 4,
    foreign: 5
  }

end
