class DojosController < ApplicationController

    def index
        @dojos = Dojo.all
        @count = Dojo.all.count
    end

    def new
    end
    
    def create
        @dojo = Dojo.new(branch: params[:dojo][:branch], street: params[:dojo][:street], city: params[:dojo][:city], state: params[:dojo][:state] )
        if @dojo.save
            flash[:success] = "You did it"
            redirect_to '/dojos'
        else
            flash[:errors] = @dojo.errors.full_messages
            redirect_to '/dojos/new/'
        end
    end
end
