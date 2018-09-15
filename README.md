# openf1-jekyll-theme

[![Build Status](https://travis-ci.org/openf1/openf1-jekyll-theme.svg?branch=master)](https://travis-ci.org/openf1/openf1-jekyll-theme)

`openf1-jekyll-theme` is a Jekyll theme used for [openf1's github pages](https://openf1.github.io).

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem 'openf1-jekyll-theme'
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: openf1-jekyll-theme
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install openf1-jekyll-theme

Optionally, if you would like to preview your site on your development PC, add the following to your site's `Gemfile`:

    gem 'github-pages', group :jekyll_plugins

## Development

To set up your environment to develop this theme:

1. Clone the theme's repository:

    ```
    $ git clone https://github.com/openf1/openf1-jekyll-theme.git
    ```

2. `cd` into the theme's directory
3. Run `script/bootstrap` to install the necessary dependencies
4. Run `bundle exec jekyll serve` to start the preview server
5. Visit `localhost:4000` in your browser to preview the theme

Add pages, documents, data, etc. like normal to test your theme's contents. As you make modifications to your theme and to your content, your site will regenerate and you should see the changes in the browser after a refresh, just like normal.

To test your theme's gem directly within another Jekyll site:

1. Build your gem:

    ```
    $ gem build openf1-jekyll-theme.gemspec
    ```

2. Add this line to your Jekyll's site `Gemfile`:

    ```ruby
    gem 'openf1-jekyll-theme', :path => 'path/to/your/gem'
    ```

3. Add this line to your Jekyll's site `_config.yml`:

    ```yml
    theme: openf1-jekyll-theme
    ```

4. Run `bundle install` to install the gem
5. Run `bundle exec jekyll serve` to start preview server
6. Visit `localhost:4000` in your browser to preview the theme

When your theme is released, only the files in `_layouts`, `_includes`, `_sass` and `assets` tracked with Git will be bundled.
To add a custom directory to your theme-gem, please edit the regexp in `openf1-jekyll-theme.gemspec` accordingly.

### Running Tests

The theme contains a minimal test suite. To run the tests, simply type:

    $ script/cibuild

You'll need to run `script/bootstrap` once before the test script will work.

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

