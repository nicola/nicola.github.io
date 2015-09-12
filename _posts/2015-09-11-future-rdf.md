---
layout: post
title:  "Towards the future RDF library"
date:   2015-09-11 11:47:04
categories: Decentralized Web
---

RDF is an simple and powerful language to describe data. However, playing with RDF data can get very tricky - especially when doing simple things. Only by solving the user experience of RDF libraries we would really get developers to user RDF more{% sidenote 1 'In all of its forms, _turtle_, _json-ld_, and so on.' %}. This blog post is directed to the community that work in this field and it is an open call to work on an ultimate, simpler library for RDF.

I will now show you three ways to do a very simple task (1) the current way (using [rdf-ext](http://github.com/rdf-ext/rdf-ext){% sidenote 2 'I have been recently involved with the development of this library' %}) (2) the way developers find it familiar (3) the way the future RDF lib should do.

## The current RDF way

_Example 1:_ Creating a graph with a triple that represents my name

```javascript
var rdf = require('rdf-ext')
var me = rdf.createGraph()
me.add(new rdf.Triple(
  new rdf.NamedNode('http://nicola.io'),
  new rdf.NamedNode('http://xmlns.com/foaf/0.1/name'),
  new rdf.Literal('Nicola')
  ))
```

_Example 2:_ Retrieving my name from the graph

```javascript
me.match(
  'http://nicola.io',
  'http://xmlns.com/foaf/0.1/name')[0]
  .object
  .toString()
// Nicola
```

## The Javascript Objects way

Now, to the RDF experts, this might sound about right, but let's remember one second how real world developers would do something like that, let's say using Javascript Objects.

_Example 3:_ The equivalent of Example 1 and 2 using JSON

```javascript
var me = {
  name: 'Nicola'
}

me.name
// Nicola
```

## The future RDF way

The future RDF library should provide a seamless experience to the developer that is used to the JS object.

_Example 4:_ The equivalent of Example 1 and 2 as it should be

```javascript
var r = require('simplerdf')
var me = r()
r['http://xmlns.com/foaf/0.1/name'] = 'Nicola'

r['http://xmlns.com/foaf/0.1/name']
// Nicola
```

Even simpler, I should be able to load an JSON-LD context to achieve the following

```javascript
var me = r()
me.context({
  'name': 'http://xmlns.com/foaf/0.1/name',
  'homepage': {
    '@id': 'http://xmlns.com/foaf/0.1/homepage',
    '@type': '@id'
  }
})
me.name = 'Nicola'

me.name
// Nicola
```

In other words, the key hack is on `Object.defineProperty` which enable us to redefine the getters/setters of object properties. So, in other words, we can have the power of a graph, behind some simple operations.

As a last note, as many of you may point out, these examples only show how to do operations when both the subject and the predicate are known - what about the rest?

In my opinion, this is already a big step forward simplifying RDF, maybe there are some operations would not be possible to achieve, and we can always come back to the traditional way of handling a graph `me.toGraph()`, or we can find together some new clever solutions that have the same spirit of simplicity.

## Conclusion

I implemented most of what presented here in a library called [simplerdf](http://github.com/nicola/simplerdf) - please, have a look at [further examples](https://github.com/nicola/simplerdf/tree/master/examples). However, as you may expect, this library is not stable at all, the APIs could change drastically in the next few days.

If you are interested, I really would like to hear from you, and maybe fork the Github repository and contribute, so that maybe, we could really write the future RDF library together.

Inspired by this [repo](https://github.com/webr3/js3) that has been written 5 years ago.
