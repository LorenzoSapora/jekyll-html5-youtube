require "jekyll"
require "jekyll-html5-youtube/version"

class YouTubeEmbed < Liquid::Tag

  def initialize(tagName, text, tokens)
    super
    @text = text
  end

  def render(context)
    youtube_url = "#{context[@text.strip]}"
    youtube_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
    @youtube_id = $1

    %Q{<div class='embed-container'><object data="http://www.youtube.com/embed/#{ @youtube_id }"></object></div>}
  end

  Liquid::Template.register_tag "youtube", self
end