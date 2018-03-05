class Order < ApplicationRecord
   self.primary_key = "id"
   validates_uniqueness_of :id, :message => "ID needs to be unique"
   validates :description, length: {minimum: 5}
   validates :video,  :format => URI::regexp(%w(http https))
   
end
