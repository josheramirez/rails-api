class Post < ApplicationRecord
    belongs_to :user
    has_many :accuracies, class_name: 'Accuracy'
    belongs_to :target
end
