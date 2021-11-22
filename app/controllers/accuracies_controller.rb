class AccuraciesController < ApplicationController

    def create
        logger.info params

        vote = Accuracy.where(user_id: params['vote'][:user_id] , post_id: params['vote'][:post_id]).first
        
        if vote
            # change the value
            vote.value = params['vote'][:value]
            vote.save()
        else
            vote=Accuracy.create(
                kind: params['vote'][:kind],
                user_id: params['vote'][:user_id],
                post_id: params['vote'][:post_id],
                value: params['vote'][:value]
            )
        end
        
        render json: {
            response: vote
        }
    end
end