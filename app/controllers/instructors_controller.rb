class InstructorsController < ApplicationController

    def new
        @instructor = Instructor.new
    end

    def create
        new_instructor = Instructor.new(instructor_params)
        if !new_instructor.valid?
            flash[:errors]= new_instructor.errors.full_messages
            redirect_to new_instructor_path
        else
            new_instructor.save
            redirect_to instructor_path(new_instructor)
        end
    end

    def show
        @instructor = Instructor.find(params[:id])
    end

    def index
        @instructors = Instructor.all
    end

    def edit
        @instructor = Instructor.find(params[:id])
    end

    def update
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
        redirect_to instructor_path(@instructor)
    end

    def destroy
        @instructor = Instructor.find(params[:id])
        @instructor.destroy
        redirect_to instructors_path
    end

    private

    def instructor_params
        params.require(:instructor).permit(:name)
    end

    
end
