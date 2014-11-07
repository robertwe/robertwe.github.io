---
layout: page
title: Posts List
tagline: 
---
{% include JB/setup %}
     
<ul class="posts">
  {% for post in site.posts %}
    <li style="font-size:16px;"><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

{% for post in site.posts limit: 10 %}
  <hr />
  <div><a href="{{ post.url }}"><h2>{{ post.title }}&nbsp;&raquo;</h2></a></div>
  <div>
      <span class="small text-muted">{{ post.date | date_to_string }}</span></div>
  <div>
    <p>
      {{ post.excerpt }} <a href="{{ post.url }}" class="lead">Read&nbsp;entire&nbsp;post...</a>
    </p>
  </div>
{% endfor %}