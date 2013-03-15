---
layout: post
title: oh-my-zsh & set-bg
published: true
guid: 185
---
<p>I've been using oh-my-zsh for a while and figured I'd finally write about it. Simply put, oh-my-zsh is an open source repository of handy Zsh defaults and configurations.</p>

<p>Why Zsh instead of Bash? It has really great autocompletion. Install oh-my-zsh with:</p>

{% gist 1178641 %}

<p>Your shell will be set to use Zsh.</p>

<p>Edit <code>~/.zshrc</code> to set the theme and enable various plugins:</p>

{% gist 1178643 %}

<p>Note that the Apple theme is not yet available in the official oh-my-zsh repository. I've submitted it for inclusion. In the mean time, you can use it by running this in your shell (just copy/paste):</p>

{% gist 1178647 %}

<p>A screenshot:</p>
<a href="/images/posts/Purple_Apple_ZSH_theme_screen_shot.png">![Screenshot](/images/posts/Purple_Apple_ZSH_theme_screen_shot_preview.png)</a>

<p>This theme does not include the hostname and Apple logo in the bottom right. This is set-bg, a separate script suite I wrote that only works with iTerm2 on OS X. If you'd like to install this, run:</p>

{% gist 1178649 %}

<p>This copies the necessary files and aliases ssh to sshb, so when you ssh to another server, your hostname in the bottom right will change.</p>

<p><strong>This requires ImageMagick</strong>. See the repository link below for instructions on how to install this.</p>

<p>You can watch the repository here: <a href="https://github.com/Tricon/set-bg">https://github.com/Tricon/set-bg</a></p>

<p><em>Be sure to launch a new shell session after installing oh-my-zsh and set-bg to see the changes</em>.</p>
