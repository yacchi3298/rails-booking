class Room < ApplicationRecord
    #userモデルに関連付け
    belongs_to :user

    mount_uploader :image, ImageUploader
end
