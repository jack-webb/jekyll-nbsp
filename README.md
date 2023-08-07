# Jekyll Non-breaking space filter (jekyll-nbsp)

A simple non-breaking space filter for Liquid/Jekyll. Replaces spaces with '\u00A0'. 

https://rubygems.org/gems/jekyll-nbsp

## Installation

1. Add `gem 'jekyll-nbsp'` to your Gemfile
2. Run `bundle install`
3. Add it to your Jekyll `_config.yml` like so

```yaml
plugins:
  - jekyll-nbsp
```


## Usage
```
{{ "This text has spaces" | nbsp }}
```
