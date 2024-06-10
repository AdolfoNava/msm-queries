class TriviaController < ApplicationController
    def oldest
        @director = Director.order({:dob => :asc }).first
        @name = @director.name
        @dob = Director.order({:dob => :asc}).first.dob.strftime("%b %d, %Y")
        render({:template => "age_templates/oldest"})
    end
    def youngest
        @director = Director.order({:dob => :asc}).at(-1)
        @name = @director.name
        @dob = Director.order({:dob => :asc}).at(-1).dob.strftime("%b %d, %Y")
        render({:template => "age_templates/youngest"})
    end
end
