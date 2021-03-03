class Order < ApplicationRecord

    # associations
    belongs_to :user
    belongs_to :show
end
