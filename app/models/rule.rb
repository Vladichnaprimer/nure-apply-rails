class Rule < ActiveRecord::Base

  enum category: {
    schooler: 1,
    college: 2,
    master: 3,
    aspirant: 4,
    foreign: 5
  }

end
