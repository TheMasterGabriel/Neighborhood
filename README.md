# Neighborhood

A set of simple scripts to help maintain compatabilty of a Bundler project across development platforms. Collaborative, open-source projects are fantastic, but fundementally limiting. There is a tendancy in programming to simply ignore non-*nix systems. A project cannot be truly collaborative without supporting _all_ those who want to collaborate. What Fred Rogers believed and instilled in children, applied to software development.

> _"I like you just the way you are"._ - Fred Rogers

## Install

For every Bundler ruby project you want to enforce cross-platform standards upon, run this command in the project's root directory:

```powershell
    ruby -e "$(curl https://raw.githubusercontent.com/TheMasterGabriel/Neighborhood/master/install)"
```

If you are on Windows, you might get an error stating `curl : The response content cannot be parsed because the Internet Explorer engine is not available.` If you do get this error, add `-UseBasicParsing` as a flag option for the curl command.

## What does this do?

This project is ever-expanding, and will continue as new discrepancies are found, but as of now this script does a few simple things:
    
1. Adds the `ruby` platform to your Gemfile.
3. Enables LF line ending normalization on your .gitattributes file, creating one if it does not exist already.
2. Adds a client-side pre-commit git hook to your repository that removes all non-ruby platform-specific gems. This is usually only necessary on non-*nix systems.