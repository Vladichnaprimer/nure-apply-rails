class Faculty < ActiveRecord::Base

  def self.euclidean_distance(user_score, faculties)
    users = [user_score]
    facs = faculties
    sum = 0
    users.zip(facs).each do |v1, v2|
      component = (v1 - v2)**2
      sum += component
    end
    Math.sqrt(sum)
  end

  def sort_by_similarity(faculties, by_these_tags)
    space = by_these_tags + faculties.map{|x| x[:score]}
    space.flatten!.sort!.uniq!

    sorted = similarities.sort {|a,b| a[1] <=> b[1]}
    return sorted.map{|point,s| point}
  end

  def self.faculties
    Faculty.uniq.pluck(:score)
  end

end
