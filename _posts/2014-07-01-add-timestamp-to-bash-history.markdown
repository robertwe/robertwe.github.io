---
layout: post
title: Add timestamp to Bash history
date: 2014-07-01 08:30:46.000000000 +02:00
tags: [bash,]
---
Somethimes there is a strong need to add timestamp to bash history. I dont wanna describe reasons why I/we want to do it. Anyway I think such thing can be quite usefulk especially when on account is used by many users (in some cases it does not depned on us). This is how we can achieve this: 
{% highlight bash %}
echo 'export HISTTIMEFORMAT="%d.%m.%y %T"' >> ~/.profile
{% endhighlight %}    
    
(in some cases it's a .bash_profile ; depends on distro) and just relogin. After you log in to your account history still be refreshed but it wont be stored into `.history` file. Time formating is exactly the same like for `strftime` please check `man 3 strftime`.

Hint: if you dont wanna relogin loading your profile file should be enough:
`. .profile` or `source .profile`


--     
Cheers   
Robert
