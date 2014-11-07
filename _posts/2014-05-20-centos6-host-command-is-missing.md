---
layout: post
title: CentOS6 "host" and "dig" commands are missing
date: 2014-05-20 20:39:37.00 +02:00
category: [CentOS]
---
Recently I configured new machine with CentOS6.5 on the board and it looks like the $*host* command was missing.
Here is a quick solution for that
yum install bind-utils
{% gist robertwe/b49a6e710e5ea02d3b5f %}
Just to keep it in one place. I always forgot which package provides it.
If you know where exactly the executable file is placed you can use **yum provides** command like this:
{% gist robertwe/551358cd2d3bb0ba8937 %}
It will help you to find most of the missing packages.


