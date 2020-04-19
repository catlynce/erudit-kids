class Resource < ApplicationRecord
    include ImageUploader::Attachment(:image)

    attribute :resource_image_url

    after_find :set_image_url

    def set_image_url
        self.resource_image_url = image_url
    end
end
