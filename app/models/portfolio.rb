class Portfolio < ApplicationRecord
 validates_presence_of :title, :body, :maain_image, :thumb_image
end
