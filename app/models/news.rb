class News < ActiveRecord::Base

    mount_uploader :image, ImageUploader
end
