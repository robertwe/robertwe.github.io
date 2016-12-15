---
layout: page
title: GitHub and Wakatime stats
permalink: /stats.html
---

### GitHub contributions chart:

<a href="https://github.com/{{ site.author.github }}">
  <img src="http://ghchart.rshah.org/{{ site.author.github }}" alt="{{ site.github_username }}'s Github chart" />
</a>

### Wakatime stats:

{% for chart in site.wakatime.charts %}

<figure>
  <embed src="https://wakatime.com/@{{ site.wakatime.username }}/{{ chart }}.svg" />
</figure>

{% endfor %}
