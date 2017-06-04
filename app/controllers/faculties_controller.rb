class FacultiesController < ApplicationController

  def index
    user_score = current_user.score

    distance = Faculty.euclidean_distance(user_score, Faculty.faculties)

    if distance <= 50
        @faculties = Faculty.all.where('score <= ?', user_score).order(score: :asc)
    else
        redirect_to no_results_path
    end
  end

  def no_results
  end
end
