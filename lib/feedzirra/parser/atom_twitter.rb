module Feedzirra
  
  module Parser

    class AtomTwitter
      include SAXMachine
      include FeedUtilities
      element :id
      element :title
      element :link, :as => :alternate_url, :value => :href, :with => {:type => "text/html", :rel => "alternate"}
      element :link, :as => :self_url, :value => :href, :with => {:type => "application/atom+xml", :rel => "self"}
  		elements :entry, :as => :entries, :class => AtomTwitterEntry

      attr_accessor :feed_url

      def self.able_to_parse?(xml) #:nodoc:
        #xml =~ /xmlns:twitter=\"http://api\.twitter\.com\"/im **unterminated string at col 45**
        (xml =~ /Atom/&& xml =~ /twitter/) || false
      end
      
    end

  end
  
end
