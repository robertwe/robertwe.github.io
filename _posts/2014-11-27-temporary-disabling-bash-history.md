---
layout: post
title: "Temporary Disabling Bash History"
description: ""
category: 
tags: [bash]
---
{% include JB/setup %}
How to do it ? It's actually very simple.
You can achieve this by `unset HISTFILE`. Of course in such case we only disable history 
for current session. 
What if we want to selectively do not put some commands into bash history ? 
<!--more-->
We can do it via `HISTCONTROL` variable. From Bash man page:

    HISTCONTROL
        A colon-separated list of values controlling how commands are saved on the history list.    
        If the list of values includes ignorespace, lines which begin with a space character are     
        not saved  in the  history  list. A value of ignoredups causes lines matching the previous     
        history entry to not be saved. A value of *ignoreboth* is shorthand for *ignorespace* and     
        *ignoredups*. A value of erasedups causes all previous lines matching the current line to 
        be removed from the history list before that line is saved. Any value not in the above 
        list is ignored. If  HISTCONTROL is unset, or does not include a valid value, all lines 
        read by the shell parser are saved on the history list, subject to the value of HISTIGNORE.
        The second and subsequent lines of a multi-line compound command are not tested, and are 
        added to the history regardless of the value of HISTCONTROL.

In my case I always use `export HISTCONTROL=ignoreboth:erasedups` and add it to `.bashrc` if necessary.
After that whenever we want to exclude specific command from storing it in the bash history we call it like 
this `<space>mysql -u xxxx -pxxxxx`. Remember about space in front of command. 

From what I see on Ubuntu 14.04 `HISTCONTROL` is set to value `ignoreboth` by default.


--robert
