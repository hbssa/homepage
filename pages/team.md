---
layout: page
title: Team
permalink: /team/
---

## SA Executive Team

<div class="row">
  {% for member in site.data.sa %}
  <div class="large-12 columns">
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
    </p>
  </div>
  {% endfor %}
</div>