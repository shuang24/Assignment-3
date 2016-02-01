class CatagoriesController < ApplicationController
    
    def show
        @cat = Category.find(params[:id])
    end
end
