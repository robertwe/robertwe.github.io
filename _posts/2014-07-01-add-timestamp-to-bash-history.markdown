---
layout: post
title: Add timestamp to Bash history
date: 2014-07-01 08:30:46.000000000 +02:00
tags: [bash,]
---
Somethimes there is a strong need to add timestamp to bash history.
In other case this is just a nice feature which can make our work a little bit easier especially when on account is 
used by many users (in some cases it does not depned on us). &nbsp; This is how we can achieve this: 
{% highlight bash %}
echo 'export HISTTIMEFORMAT="%d.%m.%y %T"' >> ~/.profile
{% endhighlight %}    
    
(in some cases it's a .bash_profile ; depends on distro) and just relogin. After you log in to your account history still be refreshed but it wont be stored into `.history` file. Time formating is exactly the same like for `strftime` please check `man 3 strftime`.

Hint: if you dont wanna relogin loading your profile file should be enough:
`. .profile` or `source .profile`


--     
Cheers   
Robert
