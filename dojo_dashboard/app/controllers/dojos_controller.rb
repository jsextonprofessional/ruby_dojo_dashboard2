class DojosController < ApplicationController

    def index
        @dojos = Dojo.all
        @count = Dojo.all.count
    end

    def new
    end
    
    def create
    Dojo.create(branch: params[:dojo][:branch], street: params[:dojo][:street], city: params[:dojo][:city], state: params[:dojo][:state] )
    flash[:success] = "You did it"
    redirect_to '/dojos'
    end

end
