class PostsController < ApplicationController
    def index
        @post = Post.all
        render json: @post
    end
    
    def create
        logger.info params[:post]

        # case targetProfile
        if params['post'][:targetId]
              # get target
              target = Target.find(params['post'][:targetId])
        else
             # search if Target exist
            target = Target.find_by(name: params['post'][:name], type: params['post'][:type])
            if (!target)
                logger.info "creando target"
                # target = Target.create(
                #     name: params[:post][:targetName],
                #     type: params[:post][:targetType],
                #     avatar: params[:post][:avatar],
                # )
                target = Target.new(target_params)
                target.save
            end
        end
       
        logger.info "parametros target"
        logger.info target
        logger.info params[:post]
        # create Post
        @post = Post.create(
            title: params['post'][:title],
            content: params['post'][:content],
            target_id: target.id,
            user_id: 1
        )
        render json: {
            data: @post
        }
    end

    def show
        @post = Post.find(params[:id])
        logger.info params[:id]
        render json:  @post
    end

    def target_params
        params.require(:post).permit(:name, :type, :avatar)
    end

end