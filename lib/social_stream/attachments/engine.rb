module SocialStream
  module Attachments
    class Engine < Rails::Engine
    
      initializer "social_stream-attachments.attachment_in_social_stream_objects" do
        SocialStream.objects.push(:attachment) unless SocialStream.objects.include?(:attachment)
      end
    end
  end
end
