---
layout: post
title: "Add timestamp to Bash history"
description: "omethimes there is a strong need to add timestamp to bash history.
I dont wanna describe reasons why I/we want to do it."
category: Bash
tags: [Bash, Linux]
---
{% include JB/setup %}

###hello

p. Somethimes there is a strong need to add timestamp to bash history. 
I dont wanna describe reasons why I/we want to do it. Anyway I think 
such thing can be quite usefulk especially when on account is used by
many users (in some cases it does not depned on us). | This is how we
can achieve this:
{% highlight ruby %}
    echo 'export HISTTIMEFORMAT="%d.%m.%y %T"' >> ~/.profile
{% endhighlight %}
(in some cases it's a *.bash_profile* ; depends on distro) and just relogin. 
After you log in to your account history still be refreshed but it wont 
be stored into .history file. Time formating is exactly the same like for 
strftime please check man 3 strftime.

Hint: if you dont wanna relogin loading your profile file should be enough: 
    . .profile or source .profile



    errors = "Errors reported by Maruku:\n"
    Maruku.new(invalid, :error_stream => errors)


<pre>robert@torres:/data/workspace/robertwe.github.io$ uname -a
Linux torres 3.8.0-44-generic #66~precise1-Ubuntu SMP Tue Jul 15 04:01:04 UTC 2014 x86_64 x86_64 x86_64 GNU/Linux
robert@torres:/data/workspace/robertwe.github.io$ 
</pre>

--<br /> 
Cheers<br /> 
Robert
