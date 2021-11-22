class PostSerializer < ActiveModel::Serializer
    attributes :id, :title, :content, :custom_function, :user_vote
    belongs_to :target
    has_one :user
    has_many :accuracies

    def custom_function
        {
            master_user: "joshe",
            version: 1
        }
    end
    def user_vote
        @vote=Accuracy.where(user_id: object.user.id , post_id: object.id).first
    end
end
