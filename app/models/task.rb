class Task < ApplicationRecord
    validates :title, presence: true, length: {minimum:1, maximum: 50}

end
