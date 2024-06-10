class ActorsController < ApplicationController
    def list
        render({:template => "list_templates/actors"})        
    end
    def display
        @id = params["the_id"]
        a = Actor.where({:id => @id}).at(0)
        @actor = a
        c = Character.where({:actor_id => @id})
        @collection = c
        render({:template => "single_templates/actor"})
    end
end
