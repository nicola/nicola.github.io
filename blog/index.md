---
layout: default
title: Nicola Greco
---
  {% include base.html %}
  <p>This blog is a collection of essays, ideas and life updates.</p>

  <p class="flowers hideOnSmall"><span class="sidenote">Poem 1: The flowers on the right hand-side are a <em>Post-Internet</em> poem I have written in code. You can read more about these <a href="https://github.com/nicola/flowers-poem">here</a>. Try and touch them.</span></p>

  <h1 class="content-listing-header sans">Articles</h1>
  <ul class="content">
    {% for post in site.posts %}
      <li class="listing">
        <a href="{{base }}{{ post.url }}"><h4 class="contrast">{{ post.title }}</h4></a>
        <span class="smaller">{{ post.date | date: "%B %-d, %Y" }}</span>  <br/>
    
      </li>
    {% endfor %}
  </ul>