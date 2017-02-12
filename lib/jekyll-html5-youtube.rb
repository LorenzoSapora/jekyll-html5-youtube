require "jekyll"
require "jekyll-html5-youtube/version"

class YouTubeEmbed < Liquid::Tag

  def initialize(tagName, text, tokens)
    super
    @text = text
  end

  def render(context)
    youtube_url = "#{context[@text.strip]}"
    if youtube_url[/youtu\.be\/([^\?]*)/]
      @youtube_id = $1
    else
      youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
      @youtube_id = $5
    end
    
    includes_path = File.join Dir.pwd, "_includes", "youtube.html"
    if File.exist?(includes_path)
      includes = File.read includes_path
      site = context.registers[:site]
      includes = (Liquid::Template.parse includes).render site.site_payload.merge!({"youtube_id" => @youtube_id})
    else
      %Q{<div class='embed-container'>\n<object data="https://www.youtube.com/embed/#{ @youtube_id }"></object>\n</div>}
    end
  end

  Liquid::Template.register_tag "youtube", self
end