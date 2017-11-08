---
layout: post
title: 'How to pass variable to Jinja template in Salt'
date: 2015-11-03 22:00:00.00 +02:00
tag: Salt
---
Yesterday I faced quite interesting problem.
In my SLS definition I was iterating over some hash of hashes and wanted to pass to Jinja template
hash, which was present in current iteration. <!--more-->
To make it more clear let show you the problem in the code:

```yaml
{% raw %}{% for vhost in pillar['vhosts'] %}
/etc/httpd/conf.d/{{ vhost.name }}.conf:
  file.managed:
    - template: jinja
    - source: salt://httpd/files/vhost/vhost_template.conf.jinja
    - user:     apache
    - group:    apache
    - mode:     644
    - require:
      - pkg: httpd
{% endfor %}{% endraw %}
```

I simple wanted to use variable _vhost_ in my template.
Variable _vhost_ is nothing more than just a hash with parameters for each vhost.
We can solve this problem by using *context* in _salt_ definition.
Here is the final version of my sls snippet (aka solution):

```yaml
{% raw %}
{% for vhost in pillar['vhosts'] %}
/etc/httpd/conf.d/{{ vhost.name }}.conf:
  file.managed:
    - template: jinja
    - source: salt://httpd/files/vhost/vhost_template.conf.jinja
    - user:     apache
    - group:    apache
    - mode:     644
    - require:
      - pkg: httpd
    - context:             # set up context for template
        vhost: {{ vhost }} # it makes vhost hash available inside
                           # Jinja template under the name vhost
{% endfor %}
{% endraw %}
```
Of course you can pass as many variables as you want via the context.


--robert
