# Best practices for working with the OneNote API

In StackOverflow and twitter, we often hear questions on how to make queries to the API faster. Here are a few recommendations:

## Use $select to select the minimum set of properties you need
When querying for a resource (say for example, sections inside a notebook), you make a request like:

```http
GET ~/notebooks/{id}/sections
```

This retrieves all the properties of the sections - but perhaps you don't really need them all, maybe you only need the id and the name of the section... in that case, it is better to say:

```http
GET ~/notebooks/{id}/sections?$select=id,displayName
```

The same applies to other APIs - the fewer properties you select, the better.

## Use $expand instead of making multiple API calls
Suppose you want to retrieve all of the user’s notebooks, sections, and section groups in a hierarchical view.

It can be tempting to do the following:

* Call `GET ~/notebooks` to get the list of notebooks
* For every retrieved notebook, call `GET ~/notebooks/{notebookId}/sections` to retrieve the list of sections
* For every retrieved notebook, call `GET ~/notebooks/{notebookId}/sectionGroups` to retrieve the list of section groups
* … optionally recursively iterate through section groups

While this will work (with a few extra sequential roundtrips to our service), there is a much better alternative by using $expand. 

```http
GET ~/notebooks?$expand=sections,sectionGroups($expand=sections)
```

This will yield the same results in one network roundtrip with way better performance – yay!

## When getting all pages for a user, do so for each section separately

While we do expose an endpoint to retrieve all pages, this isn't the best way to get all the pages the user has access to - when the user has too many sections, this can lead to timeouts/bad performance. It is better to iterate each section, getting pages for each one separately.

So it is significantly better to do several (especially if you don't need all sections):

```http
GET ~/sections/{id}/pages
```

Than several (this API is paged, so you won't be able to fetch them all at once):

```http
GET ~/pages
```

When getting page metadata, override default `lastModifiedDateTime` ordering.

It is faster for us to get pages when we don't have to sort them by `lastModifiedDateTime` (which is the default ordering) - you can achieve this by sorting by any other property:

```http
GET ~/sections/{id}/pages?$select=id,title,createdDateTime&$orderby=createdDateTime
```