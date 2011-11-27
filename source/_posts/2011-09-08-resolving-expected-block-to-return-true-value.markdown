---
layout: post
title: 'Resolving "Expected Block to Return True Value"'
date: 2011-09-08 12:52
comments: true
categories:
guid: 200
---
Ever have this error occur when working with tests in Ruby?

    Expected block to return true value

Not very descriptive is it? [This post by Deryl Doucette](http://www.ruby-forum.com/topic/1580334) explains that there was a regression introduced to Ruby 1.9.2 between p136 and p188.

To resolve this, simply update your Ruby:

    rvm install ruby-1.9.2-head

Or for patched awesomeness:

    curl https://raw.github.com/gist/1008945/4edd1e1dcc1f0db52d4816843a9d1e6b60661122/ruby-1.9.2p290.patch > /tmp/require-performance-fix.patch
    rvm install ruby-1.9.2-p290 --patch /tmp/require-performance-fix.patch -n patched
