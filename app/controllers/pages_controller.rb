class PagesController < ApplicationController 

    before_action :authenticate_admin_user!
    
    def home

    end

    def about

    end
    

    def contact
        
    end

    def careers 

    end
end