---
title: srettaⓂ
layout: page
---
{% for category in site.categories %}
  {% if category.first == "matters" %}
  <div>
    {% for post in category.last %}
    <span class="postdate">{{ post.date | preserve_timezones }}</span>
    {% if post.author != null %} • <span class="author">{{ post.author }}</span> {% endif %}
    <h4><a href="{{ site.url }}{{ site.baseurl }}{{ post.url }}">{{ post.title }}</a></h4>
    {% endfor %}
  </div>
  {% endif %}
{% endfor %}

