class FacultiesController < ApplicationController

    def index
        @faculties = Faculty.all.order(score: :desc)
    end
end
