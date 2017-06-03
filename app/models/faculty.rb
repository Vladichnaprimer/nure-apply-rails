class Faculty < ActiveRecord::Base


    def self.recomend_faculty(user_score)
        self.all.where('score <= ?', user_score)
    end

    def euclidean_distance(vector1, vector2)
      sum = 0
      vector1.zip(vector2).each do |v1, v2|
        component = (v1 - v2)**2
        sum += component
      end
      Math.sqrt(sum)
    end
end
