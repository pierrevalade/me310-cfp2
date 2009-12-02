class YoutubeVideo < Video
  
  private
  
    def set_provider
      self.provider_name = 'youtube'
    end
  
end
