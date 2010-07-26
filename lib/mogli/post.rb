module Mogli
  class Post < Model
        
    define_properties :id, :to, :message, :picture, :link, :name, :caption, 
      :description, :source, :icon, :attribution, :actions, :likes,
      :created_time, :updated_time, :privacy
    
    creation_properties :message, :picture, :link, :name, :description, :caption, :source
        
    hash_populating_accessor :actions, "Action"
    hash_populating_accessor :comments, "Comment"
    hash_populating_accessor :from, "User"
    
    def likes_create
      client.post("#{id}/likes",nil,{})
    end
  end
end
