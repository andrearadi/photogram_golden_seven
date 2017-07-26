class PicturesController < ApplicationController
    
    
    def new_form
        render ("pic_templates/new_form.html.erb")
    end
    
    def create_row
        
        i = Photo.new
        i.source = params["the_source"]
        i.caption = params["the_caption"]
        i.save
        
        @photo_count= Photo.count
        
        redirect_to("https://photogram-golden-andrearadi.c9users.io/photos")
        
        #render("pic_templates/create_row.html.erb")
    end
    
    def index
        @listofpics= Photo.all
        render("pic_templates/index.html.erb")
    end
       
    def show
        
        @photo = Photo.find_by(params[:id])
    
        #the_id_number = params["an_id"].to_i
        #pic= Photo.find(the_id_number)
        #@the_source= pic.source
        #@the_caption= pic.caption
        #Photo.find(the_id_number).source
    
        render("pic_templates/show.html.erb")
    end
    
    def edit_form
        
         @photo = Photo.find_by(params[:id])
    
       # @photo = Photo.find (the_id_number)
        
       # render("pic_templates/edit_form.html.erb")
       
       redirect_to("https://photogram-golden-andrearadi.c9users.io/photos/:id")
    end
    
    def update_row
        p= Photo.find_by(params[:id])
        p.source = params["the_source"]
        p.caption = params["the_caption"]
        p.save
        
        @photo = Photo.find_by(params[:id])
        
       # @photo = Photo.find (the_id_number)
        
        render("pic_templates/update_row.html.erb")
    end
    
    def destroy_row
        
        i= Photo.find_by(params[:id])
        i.destroy 
        
        redirect_to("https://photogram-golden-andrearadi.c9users.io/photos")
        
        #render("pic_templates/destroy_row.html.erb")
    end


end

