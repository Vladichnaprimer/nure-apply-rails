class FacultiesController < ApplicationController

    def index
        @faculties = Faculty.recomend_faculty(current_user.score).order(score: :desc).limit(4)
    end
end
