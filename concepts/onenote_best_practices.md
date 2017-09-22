# Best practices for working with the OneNote API

In StackOverflow and twitter, we often hear questions on how to make queries to the API faster. Here are a few recommendations:

## Always log the "X-CorrelationId", "Date" and "Request-Processing-Time" headers on the OneNote API response

First - make sure you have the API's performance-related information logged. All requests to the OneNote API have those 3 headers - here's an example:

```http
HTTP/1.1 200 OK
Cache-Control: no-cache
Pragma: no-cache
Content-Type: application/xml
Expires: -1
Server: Microsoft-IIS/10.0
X-CorrelationId: d0ff1746-6b9d-456f-ae18-3c7bc822d53e
X-UserSessionId: d0ff1746-6b9d-456f-ae18-3c7bc822d53e
X-OfficeFE: deployment29(8).MSOffice.ClassNotebookApiSingleBox_IN_0
X-OfficeVersion: 16.0.8418.3004
X-OfficeCluster: localhost
P3P: CP="CAO DSP COR ADMa DEV CONi TELi CUR PSA PSD TAI IVDi OUR SAMi BUS DEM NAV STA UNI COM INT PHY ONL FIN PUR"
X-Content-Type-Options: nosniff
Request-Processing-Time: 838.9842 ms
OData-Version: 4.0
X-AspNet-Version: 4.0.30319
X-Powered-By: ASP.NET
Date: Fri, 28 Jul 2017 16:54:58 GMT
Content-Length: 32552
X-CorrelationId: This uniquely identifies any API request. In case there are any issues with the API, we can use this for debugging.
Request-Processing-Time: Latency of the API.
Date: The date when the request was made.
```

Having this in your logs will make debugging performance issues easier.

## Use $select to select the minimum set of properties you need
When querying for a resource (say for example, sections inside a notebook), you make a request like:

```http
GET ~/notebooks/{id}/sections
```

This retrieves all the properties of the sections - but perhaps you don't really need them all, maybe you only need the id and the name of the section... in that case, it is better to say:

```http
GET ~/notebooks/{id}/sections?$select=id,name
```

The same applies to other APIs - the fewer properties you select, the better.

## Use $expand instead of making multiple API calls
Suppose you want to retrieve all of the user’s notebooks, sections, and section groups in a hierarchical view.

It can be tempting to do the following:

* Call `GET ~/notebooks` to get the list of notebooks
* For every retrieved notebook, call `GET ~/notebooks/{notebookId}/sections` to retrieve the list of sections
* For every retrieved notebook, call `GET ~/notebooks/{notebookId}/sectionGroups` to retrieve the list of section groups
* … optionally recursively iterate through section groups

While this will work (with a few extra sequential roundtrips to our service), there is a much better alternative. See our blog post about expand for a more details.

```http
GET ~/api/v1.0/me/notes/notebooks?$expand=sections,sectionGroups($expand=sections)
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

When getting page metadata, override default `lastModifiedDate` ordering.

It is faster for us to get pages when we don't have to sort them by `lastModifiedDate` (which is the default ordering) - you can achieve this by sorting by any other property:

```http
GET ~/sections/{id}/pages?$select=id,name,creationDate&$orderby=creationDate
```