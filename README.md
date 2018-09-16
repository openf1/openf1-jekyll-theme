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
If you want to integrate the theme with github-pages, then you must add this line instead:

    ```yml
    remote-theme: openf1/openf1-jekyll-theme
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

## Usage

### Navigation Section

The items appearing in the navigation bar are generated from `_data/navlinks.yml` and is defined as:

    ```yml
    - name: Features
      active: true
      url: /#
    ```

### Header Section

The home banner in the header section is composed of data from `_data/header.yml`. The `hero` and `figure`elements are defined as:

    ```yml
    hero:
      title: my banner heading
      text: my banner text
    figure:
      src: img_url
      alt: img_alt
    paragraph:
      - <p>optional paragraph</p>
    ``` 

Optionally, one or more `paragraph` elements can be defined.

### Page Sections

Every section on the site's main page is generated from `_sections/*.html` files. Each html file must start with a YAML front matter block.

### Footer Section

The item groups appearing in the footer section are generated from `_data/footlinks.yml` and is defined as:

    ```yml
- title: group title
  items:
    - page: Page1
      url: /#
    - page: Page2
      url: /#
    - page: Page3
      url: /#
    ```

Each page item can have `fa-icon` and `fa-icon-color` definitions as well (optional).

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

