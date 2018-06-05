class Portfolio < ApplicationRecord
 validates_presence_of :title, :body, :maain_image, :thumb_image

# custom scope
 def self.angular
 	where(subtitle: "Angular")
 end

# custom scope
 scope :ruby_on_rails_portfolio_item, -> {where(subtitle: "Ruby on Rails")}
end
