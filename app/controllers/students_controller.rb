class StudentsController < ApplicationController

    def index
        #Cold have created a variable students - Student.all & used it throughout each action/method
        render json: Student.all
    end

    def grades
        render json: Student.all.order(:grades)
    end

    def highest_grades
        render json: Student.all.maximum(:grades)
        #Or would it be:
        render json: Student.maximum(:grades)
    end
end
