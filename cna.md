---
#title: Ⓒ🅝🅐
layout: page
---
{% for category in site.categories %}
  {% if category.first == "cna" %}
  <div>
    {% for post in category.last %}
    <span class="postdate">{{ post.date | preserve_timezones }}</span> • <span class="author">CNA</span>
    <h4><a href="{{site.url}}{{site.baseurl}}{{ post.url }}">{{ post.title }}</a></h4>
    {% endfor %}
  </div>
  {% endif %}
{% endfor %}

