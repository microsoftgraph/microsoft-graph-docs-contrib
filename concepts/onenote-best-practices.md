---
title: "Best practices for working with the OneNote API"
description: "Discover recommendations for working with the OneNote API in Microsoft Graph based on answers to common questions on Microsoft Q&A."
author: "jewan-microsoft"
ms.localizationpriority: medium
ms.subservice: "onenote"
ms.date: 11/07/2024
ms.topic: best-practice
---

# Best practices for working with the OneNote API in Microsoft Graph

This article provides recommendations for working with the OneNote APIs in Microsoft Graph. These recommendations are based on answers to common questions on [Microsoft Q&A](/answers/topics/microsoft-graph-notes.html).

## Use $select to select the minimum set of properties you need

When you query for a resource (for example, sections inside a notebook), you make a request similar to the following.

```http
GET ~/notebooks/{id}/sections
```

This request retrieves all the properties of the sections. However, you might not need all properties. You can use the `$select` query parameter to return just the properties that you want, as shown in the following example.

```http
GET ~/notebooks/{id}/sections?$select=id,displayName
```

The same approach applies to other OneNote APIs.

## Use $expand instead of making multiple API calls

Suppose you want to retrieve all of the user’s notebooks, sections, and section groups in a hierarchical view. You might accomplish that by doing the following:

* Call `GET ~/notebooks` to get the list of notebooks.

* For every retrieved notebook, call `GET ~/notebooks/{notebookId}/sections` to retrieve the list of sections.

* For every retrieved notebook, call `GET ~/notebooks/{notebookId}/sectionGroups` to retrieve the list of section groups.

* Optionally recursively iterate through section groups.

This approach will work (with a few extra sequential roundtrips to the service); however, a better approach is to use the `$expand` query parameter. 

```http
GET ~/notebooks?$expand=sections,sectionGroups($expand=sections)
```

This approach yields the same results in one network roundtrip, with better performance.

## When getting all pages for a user, do so for each section separately

Microsoft Graph exposes an endpoint to retrieve all pages; however, we don't recommend using this endpoint to get all the pages the user has access to. When the user has too many sections and an attempt is made to get all pages, the call results in an HTTP status code `400` and the following message: "The maximum number of sections is exceeded for this request. To get pages for accounts with a high number of sections, we recommend getting pages for one section at a time." For more information about this error code, see [OneNote error codes](/graph/onenote-error-codes#20266).

To get all pages that a user has access to, the best practice is to make separate calls to get the pages for each section.

For example, instead of using this call (this API is paged, so you won't be able to fetch the pages all at once):

```http
GET ~/pages
```

It's better to use the following call several times (especially if you don't need all sections):

```http
GET ~/sections/{id}/pages
```

When getting page metadata, override the default `lastModifiedDateTime` ordering. It's faster to get pages when you don't have to sort them by `lastModifiedDateTime`. To do this, you can sort by any other property; for example:

```http
GET ~/sections/{id}/pages?$select=id,title,createdDateTime&$orderby=createdDateTime
```
