# Wireframe

Static site framework.

## Developing locally

This is a static site built using [Jekyll](http://jekyllrb.com/).

You'll need [Node.js](http://nodejs.org/) before you start.

To get set up:

1. Install grunt: `npm install -g grunt-cli`
2. Install Jekyll: `gem install jekyll`
3. Install s3_website: `gem install s3_website`

Then you can start the grunt tasks by running: `grunt`
And the Jekyll server by running: `jekyll serve --watch`

## Deploying the site

You can use s3_website to deploy the site.  To set up for the first time, see the [README](https://github.com/laurilehmijoki/s3_website).

You will need to edit the settings in `s3_website.yml`

To deploy just run `s3_website push`
