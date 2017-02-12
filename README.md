# Jekyll HTML5 Youtube

## Installation

```bash
gem install jekyll-html5-youtube
```

and put this at the bottom of the ``gems:`` section, in your ``_config.yml`` 

```yaml
gems:
  - jekyll-html5-youtube
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

## TODO

## Feedback/Contributing- [ ] Bug hunt.
- [ ] Support for playlists.
