class TargetsController < ApplicationController
    def findByName
        logger.info params[:name]
        @targets = Target.where("name like ?", "%" + params[:name] + "%")
        render json:  @targets
    end
end