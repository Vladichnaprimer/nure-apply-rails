class Term < ActiveRecord::Base

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end
end
