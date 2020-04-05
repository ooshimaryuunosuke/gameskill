class Review < ApplicationRecord
belongs_to :contractor, class_name: 'User'
belongs_to :client, class_name: 'User'
end
