require "jekyll"
require "jekyll-html5-youtube/version"

class YouTubeEmbed < Liquid::Tag

  def initialize(tagName, text, tokens)
    super
    @text = text
  end

end