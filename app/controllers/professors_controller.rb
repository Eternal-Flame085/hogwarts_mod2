class ProfessorsController < ApplicationController
  def index
    @professors = Professor.all
  end

  def show
    @professor = Professor.find(params[:id])
    @average_age = @professor.average_age(@professor.students)
  end
end
