class MoviesController < ApplicationController
    def list 
     render({:template => "list_templates/movies"})
    end
    
    def display
    @id = params["the_id"]
    @movie = Movie.where(:id => @id).first

    render({:template => "single_templates/movie"})
    end 
end
