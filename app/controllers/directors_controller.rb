class DirectorsController < ApplicationController
    def list
        render({:template => "list_templates/directors"})        
    end
    def display
        @id = params["the_id"]
        d = Director.where({:id => @id}).at(0)
        @director = d
        c = Movie.where({:director_id => @id})
        @collection = c
        render({:template => "single_templates/director"})
    end
end
