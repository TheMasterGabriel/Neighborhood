# Neighborhood

A set of simple scripts to help maintain compatibility of a ruby project across development platforms. Collaborative, open-source projects are fantastic, but fundamentally limiting. There is a tendency in programming to simply ignore Unix-unlike systems, primarily Windows. A project cannot be truly collaborative without supporting _all_ those who want to collaborate. What Fred Rogers believed and instilled in children, applied to software development.

> _"I like you just the way you are"._ - Fred Rogers

## Prerequisites

1. Your project must be using Bundler to maintain the gems its using.
2. For the moment, Neighborhood does not support multiple pre-commit git hooks. If you have one already, Neighborhood will not work.
3. If on Windows, you must have [Git for Windows](https://git-scm.com/) installed.

## Install

For every ruby project you want to enforce cross-platform standards upon, run this command in the project's root directory:

```sh
    ruby -e "$(curl https://tinyurl.com/install-neighborhood)"
```

If you are on Windows, you might get an error stating `curl : The response content cannot be parsed because the Internet Explorer engine is not available.` If you do get this error, add `-UseBasicParsing` as a flag option for the curl command like so:

```sh
    ruby -e "$(curl -UseBasicParsing https://tinyurl.com/install-neighborhood)"
```

## What does this do?

This project is ever-expanding, and will continue as new discrepancies are found, but as of now this script does a few simple things:
    
1. Adds the `ruby` platform to your Gemfile.
3. Enables LF line ending normalization on your .gitattributes file, creating one if it does not exist already.
2. Adds a client-side pre-commit git hook to your repository that removes all non-ruby platform-specific gems.
