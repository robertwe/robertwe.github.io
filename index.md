---
layout: page
title: Hello World!
tagline: 
---
{% include JB/setup %}

Read [Jekyll Quick Start](http://jekyllbootstrap.com/usage/jekyll-quick-start.html)

Complete usage and documentation available at: [Jekyll Bootstrap](http://jekyllbootstrap.com)

## Update Author Attributes

The theme should reference these variables whenever needed.
    
## Sample Posts

This blog contains sample posts which help stage pages and blog data.
When you don't need the samples anymore just delete the `_posts/core-samples` folder.
{% highlight bash linenos %}
    $ rm -rf _posts/core-samples
{% endhighlight %}
Here's a sample "posts list".

<ul class="posts">
  {% for post in site.posts %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

## To-Do

This theme is still unfinished. If you'd like to be added as a contributor, [please fork](http://github.com/plusjade/jekyll-bootstrap)!
We need to clean up the themes, make theme usage guides with theme-specific markup examples.
{% highlight ruby linenos %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}


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


`Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.`

<p>
    <iframe src="//player.vimeo.com/video/75755258" width="500" height="281" frameborder="0" webkitallowfullscreen="" mozallowfullscreen="" allowfullscreen="" />
</p>
<p>
    <a href="http://vimeo.com/75755258">Swedish House Mafia - Greyhound</a> from <a href="http://vimeo.com/biglazyrobot">BLR_VFX</a> on <a href="https://vimeo.com">Vimeo</a>.</p>


{% raw %}<script src="https://gist.github.com/robertwe/551358cd2d3bb0ba8937.js"></script> {% raw %}
