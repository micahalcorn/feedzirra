module Feedzirra
  
  module Parser

    class AtomTwitterEntry
      include SAXMachine
      include FeedEntryUtilities
      element :id
      element :published
      element :link, :as => :url, :value => :href, :with => {:type => "text/html", :rel => "alternate"}
      element :title
      element :link, :as => :image_url, :value => :href, :with => {:type => "image/png", :rel => "image"}
      element :"twitter:source", :as => :source
      element :uri, :as => :name
    end

  end
    
end
