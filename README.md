# Jekyll HTML5 Youtube

[![Gem Version](https://badge.fury.io/rb/jekyll-html5-youtube.svg)](https://badge.fury.io/rb/jekyll-html5-youtube)

Jekyll plugin to generate clean html5 snippets for embedding YouTube videos, without iframes.

## Installation

```bash
gem install jekyll-html5-youtube
```

and put this at the bottom of the ``gems:`` section, in your ``_config.yml`` 

```yaml
gems:
  - jekyll-html5-youtube
```

add this to your CSS file

```css
.embed-container{position:relative;padding-bottom:56.25%;height:0;overflow:hidden;max-width:100%}
.embed-container object{position:absolute;top:0;left:0;width:100%;height:100%}
```

## Usage

```ruby
 {% youtube "https://www.youtube.com/watch?v=abcd5678" %}
```

You can also use

```ruby
{% youtube "https://www.youtube.com/embed/abcd5678" %}
{% youtube "https://youtu.be/abcd5678" %}
```

## Result

By default the plugin will output

```html
<div class="embed-container">
  <object data="https://www.youtube.com/embed/abcd5678"></object>
</div>
```

You can write your own snippet by creating a file in ``_includes`` called ``youtube.html``. The YouTube ID is displayed using ``{{ youtube_id }}``.

Example ``youtube.html``:

```ruby
<object data="https://www.youtube.com/embed/{{ youtube_id }}" style="width:100%;height:100vh"></object>
```

## Examples

For troubleshooting, or just a quick start using ``jekyll-html5-youtube``, you can look inside the ``examples`` folder.

``examples/default`` is using the default output.

``examples/custom`` is a custom output for the partial, using ``_includes/youtube.html``. 

## TODO

- [x] Add examples.
- [ ] Support for timecode feature.
- [ ] Support for playlists.
- [ ] Support for channel information display.
- [ ] Bug hunt.

## Feedback/Contributing

Any direct feedback can be given here:

[https://knowbl.co/contact/](https://knowbl.co/contact/)

Or raise an issue

[https://github.com/knowbl/jekyll-html5-youtube/issues](https://github.com/knowbl/jekyll-html5-youtube/issues)

## AUTHOR

Written by [Lorenzo Sapora](https://sush.us) for [Knowbl](https://knowbl.co).

- [Blog](https://sush.us/)
- [Github](https://github.com/lorenzosapora/)
- [Gitlab mirror](https://git.knowbl.co/public)
- [Twitter](https://twitter.com/lorenzosapora)