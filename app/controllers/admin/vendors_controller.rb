class Admin::VendorsController < Admin::BaseController
    def index
      @vendors = User.where(role:"vender")        
    end
    
end
