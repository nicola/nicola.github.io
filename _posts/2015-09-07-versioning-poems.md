---
layout: post
title:  "Introducing Versioning Poems"
date:   2015-09-07 23:42:04
categories: Post-Internet
---

In London we have a fantasic group of people that discusses cutting edge ideas, the group is called the __Palo Alto Supermarket test__{% sidenote 1 'It abbreviates as __PST__, maybe it is worth looking for an interesting acronym, e.g. _Policy_, _Society_ and _Technology_. Please ping me on twitter if you want to join in.' %}. A recurrent topic has been Post-Internet art which we think it can be the next artistic expression trend{% sidenote 2 'Ping me if you are interested in hearing more, I would like to build up a sort of community around this' %}.

In this post, I would like to introduce one way of writing Post-Internet poetry that mixes __traditional__ poetry and __coding__ poetry: __Versioning Poems__ - I hope to inspire a new generation of poets, please update me [@nicolagreco](http://twitter.com/nicolagreco) if you write some.

## Versioning Poems

A versioning poem has two characteristics:

1. __Versioning tool__: The poem written in commit messages using a versioning tool
2. __Commit diff__: Each line has a commit diff that has code related to the message

In this way, one could clone a repository and just list the commit messages. The following is a poem of mine [9*19 Flowers poem](https://github.com/nicola/flowers-poem).

### Understanding requirement 1

As you can see each line shows up as a poem

```bash
$ git clone https://github.com/nicola/flowers-poem
$ git fetch origin poem
$ git checkout poem
$ git log --format="%C(yellow)%h%Creset %Cgreen%s%Creset%n%b"

ea814f4 POEM: 9*19 flowers
02d0dc0 Handcraft flowers from maths and lines,
aa14064 Choose the colors to make them shine,
ad4e12c Till the soil to plant the seeds.
700b967 .
7cea9e1 See me to make me glow
93c57f8 Touch me to give you more
e023bd0 Touch me you'll never stop
e146d2c Please touch me again.
```

### Understanding requirement 2

The difference added by `93c57f8 Touch me to give you more` relates to a piece of code that adds the function `start_touching`

```diff
93c57f8 Touch me to give you more
+  function start_touching(d, i) {
+    var flower = d3.select(this);
+    flower
+     .transition()
+     .delay(10)
+     .duration(1000)
+     .attr("d", handcraft_flower)
+     .style("stroke", "#ccc");
+  }
```

## Conclusion

{% marginfigure '/assets/img/flowers.png' 'Figure 1: Detail of 9*19 Flowers poem' %}You can get very bizarre, the code does not need to work necessarely. In the case of my flowers, the final commit brings up a final working version of a [visualization of the poem](http://nicola.io/flowers-poem/) (See Figure 1).

I challenge your engineering skills and creativity to surprise me with a poem of yours.