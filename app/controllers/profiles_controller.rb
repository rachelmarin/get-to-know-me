class ProfilesController < ApplicationController
 before_action :find_profile, only: [:show, :edit, :update, :destroy ]  

    def index
    @profiles = Profile.all    
    end

    def show
    
    end

    def new
     @profile = Profile.new
    end

    def create
           @profile = Profile.new(profile_params)
        if @profile.save
           redirect_to profiles_path
        else
           flash.now[:error] = @profile.errors.full_messages
           render :new
    end

    def edit
        # @profile.name = ""
    end

    def update
        if @profile.update(profile_params)
           redirect_to profile_path(@profile)
        else 
            flash.now[:error] = @profile.errors.full_messages
            render :edit
        end
    end 

        def destroy
            @profile.destroy
            flash[:notice] = "#{@profile.name} was deleted"
            redirect_to profiles_path           
        end
end


     private

     def profile_params
        params.require(:profile).permit(:name, :birthdate)       
     end

     def find_profile
       @profile = Profile.find_by_id(params[:id])
     end
end
