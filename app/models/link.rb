class Link < ApplicationRecord
    validates :url, presence: true

    def to_param
        Base62.encode(id)
    end
end
