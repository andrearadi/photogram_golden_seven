class PicturesController < ApplicationController
    
    
    def new_form
        render ("pic_templates/new_form.html.erb")
    end
    
    def create_row
        
        p = Photo.new
        p.source = params["the_source"]
        p.caption = params["the_caption"]
        p.save
        
        @photo_count= Photo.count
        
        render("pic_templates/create_row.html.erb")
    end
    
    def index
        @listofpics=Photo.all
        render("pic_templates/index.html.erb")
    end
    
    def show
    
        the_id_number = params["an_id"].to_i
   
        Photo.find(the_id_number).source
    
        render("pic_templates/show.html.erb")
    end
    
    def edit_form
        
        @photo = Photo.find (the_id_number)
        
        render("pic_templates/edit_form.html.erb")
    end
    
    def update_row
        p= Photo.find(the_id_number)
        p.source = params["the_source"]
        p.caption = params["the_caption"]
        p.save
        
        @photo = Photo.find (the_id_number)
        
        render("pic_templates/update_row.html.erb")
    end
    
    def destroy_row
        
        i= Photo.find(the_id_number)
        i.destroy 
        
        render("pic_templates/destroy_row.html.erb")
    end


end

