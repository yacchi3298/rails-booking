class Room < ApplicationRecord
    #userモデルに関連付け
    belongs_to :user
end
