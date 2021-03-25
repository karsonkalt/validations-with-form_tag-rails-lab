class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: { minimum: 100}

    # can't remember this validator
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}

#   1. `title` is not blank
#   1. `content` is at least 100 characters long
#   1. `category` is either `"Fiction"` or `"Non-Fiction"`
end
