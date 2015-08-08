---
layout: page
title: Team
permalink: /team/
---

## SA Executive Team

{% for member in site.data.sa %}
  <div class="row team-member">
    <div class="small-3 medium-3 large-2 columns">
      <div class="th">
        <img src="{{member.thumb}}">
      </div>
    </div>
    <div class="small-9 medium-9 large-10 columns">
      <h3>{{member.name}} <small>{{member.pos}}</small></h3>
      <p class="bio">{{member.bio}}</p>
      <p class="contact-info">
        <i>Contact Info:</i>
        <a href="mailto:{{member.email}}?subject=SA">Email</a>
        {% if member.linkedin %}
          | <a href="{{member.linkedin}}">LinkedIn</a>
        {% endif %}
        {% if member.twitter %}
          | <a href="https://twitter.com/{{member.twitter}}">Twitter</a>
        {% endif %}
        {% if member.url %}
          | <a href="{{member.url}}">URL</a>
        {% endif %}
      </p>
    </div>
  </div>
{% endfor %}
